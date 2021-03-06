/*
 * Copyright (C) 2015 Holmes Team at HUAWEI Noah's Ark Lab.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */

package org.apache.spark.streamdm.streams

import java.io.File
import java.util.Calendar
import scala.io.Source
import scala.collection.mutable.ArrayBuffer
import scala.util.Random

import org.apache.spark.Logging
import org.apache.spark.rdd.RDD
import org.apache.spark.streaming.dstream.{ DStream, InputDStream }
import org.apache.spark.streaming.{ Time, Duration, StreamingContext }

import com.github.javacliparser.{ IntOption, FloatOption, StringOption, FileOption }

import org.apache.spark.streamdm.core._
import org.apache.spark.streamdm.core.specification._
import org.apache.spark.streamdm.streams.generators.Generator

/**
 * FileReader is used to read data from one file of full data to simulate a stream data.
 *
 * <p>It uses the following options:
 * <ul>
 *  <li> Chunk size (<b>-k</b>)
 *  <li> Slide duration in milliseconds (<b>-d</b>)
 *  <li> Type of the instance to use, it should be "dense" or "sparse" (<b>-t</b>)
 *  <li> Data File Name (<b>-f</b>)
 *  <li> Data Header Format,uses weka's arff as default.(<b>-h</b>)
 * </ul>
 */

class FileReader extends StreamReader with Logging {

  val chunkSizeOption: IntOption = new IntOption("chunkSize", 'k',
    "Chunk Size", 10000, 1, Integer.MAX_VALUE)

  val slideDurationOption: IntOption = new IntOption("slideDuration", 'd',
    "Slide Duration in milliseconds", 100, 1, Integer.MAX_VALUE)

  val instanceOption: StringOption = new StringOption("instanceType", 't',
    "Type of the instance to use", "dense")

  val instanceLimitOption: IntOption = new IntOption("instanceLimit", 'i',
    "Limit of number of instance", 0,0, Integer.MAX_VALUE)

  val fileNameOption: StringOption = new StringOption("fileName", 'f',
    "File Name", "../data/rdt300k.arff")
    //covtypeNorm
    //../data/randomtreedata.arff

  val dataHeadTypeOption: StringOption = new StringOption("dataHeadType", 'h',
    "Data Head Format", "arff")

  val headParser = new SpecificationParser
  var fileName: String = null
  var headFileName: String = null
  var isInited: Boolean = false
  var hasHeadFile: Boolean = false
  var lines: Iterator[String] = null
  var allLines: Array[String] = null
  var spec: ExampleSpecification = null
  var counter: Int = 0
  var lineIndex: Int = 0
  var fileSize: Int = 0
  var limit: Int = 0
  var limitInstance: Int = 0

    /**
    * 
    * @nhnminh: Add instanceLimit to stop the stream after predefined N instances 
    */
  // override def getInstanceLimit():Int ={
  //   val times = instanceLimitOption.getValue / chunkSizeOption.getValue
  //   // val times = 1000000 / chunkSizeOption.getValue
  //   times
  // }
  def init() {

    if (!isInited) {
      fileName = fileNameOption.getValue
      println(fileName)
      val file = new File(fileName)
      if (!file.exists()) {
        logError("file does not exist, input a new file name")
        println("file does not exist, input a new file name")
        exit()
      }
      headFileName = fileNameOption.getValue() + "." +
        dataHeadTypeOption.getValue + ".head"
      val hfile: File = new File(headFileName)
      if (hfile.exists()) {
        // has a head file
        hasHeadFile = true
      }
      spec = headParser.getSpecification(
        if (hasHeadFile) headFileName else fileName, dataHeadTypeOption.getValue)
      for (index <- 0 until spec.out(0).range()) {
        logInfo(spec.out(0).asInstanceOf[NominalFeatureSpecification](index))
      }

      if(allLines == null ){
        allLines = Source.fromFile(fileName).getLines().toArray
        fileSize = allLines.length
      }
      if(instanceLimitOption.getValue == 0 || instanceLimitOption.getValue > fileSize)
        limitInstance = fileSize
      else
        limitInstance = instanceLimitOption.getValue

      limit = fileSize/chunkSizeOption.getValue

      isInited = true
    }
  }

  /**
   * Obtains the specification of the examples in the stream.
   *
   * @return an ExampleSpecification of the features
   */
  override def getExampleSpecification(): ExampleSpecification = {
    init()
    // println("Specification: ")
    // println(spec.numberInputFeatures())
    spec
  }

  /**
   * Get one Example from file
   *
   * @return an Example 
   */
  def getExampleFromFile(): Example = {
    
    // val instanceLimit = instanceLimitOption.getValue
    
    var exp: Example = null

    var line: String = ""
    if(lineIndex < fileSize - 2)
      line = allLines(lineIndex)
    else
      line = allLines(fileSize-1)

      //process
      while (!hasHeadFile && (line == "" || line.startsWith(" ") ||
        line.startsWith("%") || line.startsWith("@"))) {
        lineIndex = lineIndex + 1
        line = allLines(lineIndex)
      }



      if (!hasHeadFile) {
        //logInfo("UUUU" + line)
        if ("arff".equalsIgnoreCase(dataHeadTypeOption.getValue())) {
          exp = ExampleParser.fromArff(line, spec)

        } else {
          if ("csv".equalsIgnoreCase(dataHeadTypeOption.getValue())) {
            //for the csv format, we assume the first is the classification
            val index: Int = line.indexOf(",")
            line = line.substring(0, index) + " " + line.substring(index + 1).trim()
            exp = Example.parse(line, instanceOption.getValue, "dense")

          }
        }
      } else {
        exp = Example.parse(line, instanceOption.getValue, "dense")
      }

      lineIndex = lineIndex + 1
      exp

    }

  /**
   * Obtains a stream of examples.
   *
   * @param ssc a Spark Streaming context
   * @return a stream of Examples
   */
  override def getExamples(ssc: StreamingContext): DStream[Example] = {
    init()

    new InputDStream[Example](ssc) {


      override def start(): Unit = {

        println ("File reading gets started.")
      }

      override def stop(): Unit = {
        println("Reading file stopped.")
      }

      override def compute(validTime: Time): Option[RDD[Example]] = {

        var arraySize: Int = 0
        if(counter < limit ){
          arraySize = chunkSizeOption.getValue
        }
        else if (counter == limit ){
          arraySize = limitInstance % chunkSizeOption.getValue
        }
        else
        {
            ssc.stop(stopSparkContext = false, stopGracefully = false)
        }
        val examples: Array[Example] = Array.fill[Example](arraySize)(getExampleFromFile())

        val examplesRDD = ssc.sparkContext.parallelize(examples)
        counter = counter + 1
        Some(examplesRDD)


      }

      override def slideDuration = {
        new Duration(slideDurationOption.getValue)
      }
    }
  }
}

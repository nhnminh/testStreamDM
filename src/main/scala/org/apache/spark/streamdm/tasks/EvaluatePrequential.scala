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

 package org.apache.spark.streamdm.tasks

 import com.github.javacliparser.{StringOption, ClassOption, FlagOption}
 import org.apache.spark.streamdm.core._
 import org.apache.spark.streamdm.classifiers._
 import org.apache.spark.streamdm.streams._
 import org.apache.spark.streaming.StreamingContext
 import org.apache.spark.streamdm.evaluation._
 import org.apache.spark.streaming.dstream.DStream

 import java.util.Calendar

/**
 * Task for evaluating a classifier on a stream by testing then training with
 * each example in sequence.
 *
 * <p>It uses the following options:
 * <ul>
 *  <li> Learner (<b>-c</b>), an object of type <tt>Classifier</tt>
 *  <li> Evaluator (<b>-e</b>), an object of type <tt>Evaluator</tt>
 *  <li> Reader (<b>-s</b>), a reader object of type <tt>StreamReader</tt>
 *  <li> Writer (<b>-w</b>), a writer object of type <tt>StreamWriter</tt>
 * </ul>
 */
 class EvaluatePrequential extends Task {

  val learnerOption:ClassOption = new ClassOption("learner", 'l',
    "Learner to use", classOf[Classifier], "trees.HoeffdingTree")

  val evaluatorOption:ClassOption = new ClassOption("evaluator", 'e',
    "Evaluator to use", classOf[Evaluator], "BasicClassificationEvaluator")

  val streamReaderOption:ClassOption = new ClassOption("streamReader", 's',
    "Stream reader to use", classOf[StreamReader], "FileReader")

  val resultsWriterOption:ClassOption = new ClassOption("resultsWriter", 'w',
    "Stream writer to use", classOf[StreamWriter], "PrintStreamWriter")

  val showConfusionMatrixOption:FlagOption = new FlagOption("showConfusionMatrix", 'c',
    "Show full Confusion Matrix") 
  

  /**
   * Run the task.
   * @param ssc The Spark Streaming context in which the task is run.
   */
   def run(ssc:StreamingContext): Unit = {

    val t1 = System.nanoTime

    val reader:StreamReader = this.streamReaderOption.getValue()

    val learner:Classifier = this.learnerOption.getValue()
    
    // val showConfusionMatrix = if (this.showConfusionMatrixOption.getValue() == true) 1.0 else 0.0 
    val showConfusionMatrix = 0

    val evaluator:Evaluator = this.evaluatorOption.getValue()

    val writer:StreamWriter = this.resultsWriterOption.getValue()

    val counter = ssc.sparkContext.accumulator(0,"counter")
    val correct = ssc.sparkContext.accumulator(0,"correct")
    val total = ssc.sparkContext.accumulator(0,"total")
    val exampleSpecification = reader.getExampleSpecification()
      //get number of classes from the Example Specification.
      val numClasses = exampleSpecification.outputFeatureSpecification(0).range() 
      // for ex: class={class1, class2, class3}. valueOfCLass will return [class1,class2,class3]
      val valueOfClass = exampleSpecification.outputFeatureSpecification(0).getValue() 
      
      learner.init(exampleSpecification) 
      val instances = reader.getExamples(ssc)
   
      //Predict
      val predPairs = learner.predict(instances)
      val size = instances.count()
      size.foreachRDD(rdd => 
        rdd.take(10).foreach(x => {
          // count the number of instances as the stopping condition
          counter.add(x.toInt)
          println("==============================")
          println("Counter: " + counter.value)
          println("Chunk: " + x)
         
        //if counter exceeds N instances, streamingContext will be stopped gracefully
        if (counter.value > 100){
          println("Over 100 instances")
          println("Running time = " + (System.nanoTime - t1)/1e9d)
          ssc.stop(stopSparkContext = false, stopGracefully = false)
          
        }

      }) )

      //Train
      learner.train(instances)



      // writer.output(evaluator.addResult(predPairs,showConfusionMatrix, numClasses, valueOfClass))
      

/*
 *  EVALUATE - 
 *  1. Classifier: Basic Classifier Evaluation is used, which accumulate the number of correct prediction till the end.
 *  2. Clustering: ...
 */
      
      val eachRDDAccuracy = evaluator.addResult(predPairs,showConfusionMatrix, numClasses, valueOfClass)

      if (evaluator.isInstanceOf[BasicClassificationEvaluator]){
        eachRDDAccuracy.foreachRDD(rdd => 
        rdd.collect().foreach{
          x => {
            val values = x.split(",")
            values.zipWithIndex.foreach{
              t => {
                var t1 = t._1.toDouble.toInt
                if(t._2==0){correct.add(t1)}
                else{total.add(t1)}
              }
            }
            println("Accuracy: %.3f, Correct: %.3f, Total: %.3f".format(correct.value.toDouble/total.value.toDouble, correct.value.toDouble, total.value.toDouble))
      
        }})  
      }

      else {
        writer.output(evaluator.addResult(predPairs,showConfusionMatrix, numClasses, valueOfClass))
      }
      

    }

    
  }

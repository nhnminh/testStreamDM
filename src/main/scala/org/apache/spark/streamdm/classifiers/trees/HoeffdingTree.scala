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

package org.apache.spark.streamdm.classifiers.trees

import scala.collection.mutable.ArrayBuffer
import scala.collection.mutable.HashSet
import scala.math.{sqrt, log => math_log}
import scala.collection.mutable.Queue
import org.apache.spark.Logging
import com.github.javacliparser._
import org.apache.spark.streaming.dstream._
import org.apache.spark.streamdm.utils.Utils.argmax
import org.apache.spark.streamdm.core._
import org.apache.spark.streamdm.classifiers._
import org.apache.spark.streamdm.core.specification.ExampleSpecification

/**
 *
 * The Hoeffding tree is an incremental decision tree learner for large data
 * streams, that assumes that the data distribution is not changing over time.
 * It grows incrementally a decision tree based on the theoretical guarantees of
 * the Hoeffding bound (or additive Chernoff bound). A node is expanded as soon
 * as there is sufficient statistical evidence that an optimal splitting feature
 * exists, a decision based on the distribution-independent Hoeffding bound. The
 * model learned by the Hoeffding tree is asymptotically nearly identical to the
 * one built by a non-incremental learner, if the number of training instances
 * is large enough.
 *
 * <p>It is controlled by the following options:
 * <ul>
 * <li> numeric observer to use (<b>-n</b>); for the moment, only Gaussian
 * approximation is supported; class of type FeatureClassObserver;
 * <li> number of examples a leaf should observe before a split attempt
 * (<b>-g</b>);
 * <li> Number of examples a leaf should observe before applying NaiveBayes
 * (<b>-q</b>);
 * <li> split criterion to use (<b>-s</b>), an object of type SplitCriterionType;
 * <li> allowable error in split decision (<b>-c</b>);
 * <li> threshold of allowable error in breaking ties (<b>-t</b>);
 * <li> allow only binary splits (<b>-b</b>), boolean flag;
 * <li> disable poor attributes (<b>-r</b>);
 * <li> allow growth (<b>-o</b>);
 * <li> disable pre-pruning (<b>-p</b>);
 * <li> leaf prediction to use (<b>-l</b>), either MajorityClass (0), NaiveBayes
 * (1) or adaptive NaiveBayes (2, default);
 * <li> enable splitting at all leaves (<b>-a</b>); the original algorithm can
 * split at any time, but in Spark Streaming one can only split once per RDD; the option
 * controls whether to split at leaf of the last Example of the RDD, or at every leaf.
 * </ul>
 */
class HoeffdingTree extends Classifier {

  type T = HoeffdingTreeModel

  val numericObserverTypeOption: IntOption = new IntOption("numericObserverType", 'n',
    "numeric observer type, 0: gaussian", 0, 0, 2)

  val splitCriterionOption: ClassOption = new ClassOption("splitCriterion", 's',
    "Split criterion to use.", classOf[SplitCriterion], "InfoGainSplitCriterion")

  val growthAllowedOption: FlagOption = new FlagOption("growthAllowed", 'o',
    "Allow to grow")

  val binaryOnlyOption: FlagOption = new FlagOption("binaryOnly", 'b',
    "Only allow binary splits")

  val numGraceOption: IntOption = new IntOption("numGrace", 'g',
    "The number of examples a leaf should observe between split attempts.",
    200, 1, Int.MaxValue)

  val tieThresholdOption: FloatOption = new FloatOption("tieThreshold", 't',
    "Threshold below which a split will be forced to break ties.", 0.05, 0, 1)
  //previously 0.05

  val splitConfidenceOption: FloatOption = new FloatOption("splitConfidence", 'c',
    "The allowable error in split decision, values closer to 0 will take longer to decide.",
    0.0000001, 0.0, 1.0)

  val learningNodeOption: IntOption = new IntOption("learningNodeType", 'l',
    "Learning node type of leaf", 2, 0, 2)
  //originally: 2

  val nbThresholdOption: IntOption = new IntOption("nbThreshold", 'q',
    "The number of examples a leaf should observe between permitting Naive Bayes", 0, 0, Int.MaxValue)

  val noPrePruneOption: FlagOption = new FlagOption("noPrePrune", 'p', "Disable pre-pruning.")

  val removePoorFeaturesOption: FlagOption = new FlagOption("removePoorFeatures", 'r', "Disable poor features.")

  val splitAllOption: FlagOption = new FlagOption("SplitAll", 'a', "Split at all leaves")

  var model: HoeffdingTreeModel = null

  var espec: ExampleSpecification = null

  /* Init the model used for the Learner*/
  override def init(exampleSpecification: ExampleSpecification): Unit = {
    espec = exampleSpecification
    val numFeatures = espec.numberInputFeatures()
    val outputSpec = espec.outputFeatureSpecification(0)
    val numClasses = outputSpec.range()
    // model = new HoeffdingTreeModel(espec, numericObserverTypeOption.getValue, splitCriterionOption.getValue(),
    //   growthAllowedOption.isSet(), binaryOnlyOption.isSet(), numGraceOption.getValue(),
    //   tieThresholdOption.getValue, splitConfidenceOption.getValue(),
    //   learningNodeOption.getValue(), nbThresholdOption.getValue(),
    //   noPrePruneOption.isSet(), removePoorFeaturesOption.isSet(), splitAllOption.isSet())
    // model.init()
    // println("Initialize model: ")
    model = new HoeffdingTreeModel(espec, numericObserverTypeOption.getValue, splitCriterionOption.getValue(),
      true, binaryOnlyOption.isSet(), numGraceOption.getValue(),
      tieThresholdOption.getValue, splitConfidenceOption.getValue(),
      learningNodeOption.getValue(), nbThresholdOption.getValue(),
      noPrePruneOption.isSet(), removePoorFeaturesOption.isSet(), splitAllOption.isSet())
    model.init()
  }

  /* Gets the current model used for the Learner.
   *
   * @return the Model object used for training
   */
  override def getModel: HoeffdingTreeModel = model

  /* Train the model from the stream of instances given for training.
   *
   * @param input a stream of instances
   * @return Unit
   */


  override def train(input: DStream[Example]): Unit = {
    // val seedModel = new HoeffdingTreeModel(espec, numericObserverTypeOption.getValue, splitCriterionOption.getValue(),
    //   true, binaryOnlyOption.isSet(), numGraceOption.getValue(),
    //   tieThresholdOption.getValue, splitConfidenceOption.getValue(),
    //   learningNodeOption.getValue(), nbThresholdOption.getValue(),
    //   noPrePruneOption.isSet(), removePoorFeaturesOption.isSet(), splitAllOption.isSet())
    // seedModel.init()



//    input.foreachRDD {
//      rdd =>
//        val tmodel = rdd.aggregate(new HoeffdingTreeModel(model))(
//
//            (mod, example) => {mod.update(example)  }, //map
//
//            (mod1, mod2) => { mod1.merge(mod2, false ) } //reduce
//
//          )
//
//        println("tmodel: " + tmodel.description())
//        println("Before merge: " + model.description())
//
//        /*
//        *     To have this work as a Majority Classifier, put the flag to be false.
//        */
//
//        model = model.merge(tmodel, true)
//
//        println("After merge: " + model.description())
//        model.checkforSum()
//
//
//
//
//    }


    /**
      * alternative version:
      */

    input.foreachRDD{
      rdd =>
      {
        rdd.collect().foreach{
          x =>
          {
            val tmodel = new HoeffdingTreeModel(model)
//            println("tmodel initial: " + tmodel.description())
            tmodel.update(x)
//            println("tmodel update: " + tmodel.description())
//            println("Model before merge: "+ model.description())
            model.merge(tmodel, true)
//            println("model after merge: " + model.description())
          }
        }
      }
    }

  }



  /*ORIGINAL VERSION



override def train(input: DStream[Example]): Unit = {
    input.foreachRDD {
      rdd =>
        val tmodel = rdd.aggregate(new HoeffdingTreeModel(model))(

            (mod, example) => { mod.update(example)  },

            (mod1, mod2) => {mod1.merge(mod2, false) }
          )
        model = model.merge(tmodel, true)

    }

  }
*/

  /* Predict the label of the Instance, given the current model
   *
   * @param instance the Instance which needs a class predicted
   * @return a tuple containing the original instance and the predicted value
   */
  def predict(input: DStream[Example]): DStream[(Example, Double)] = {

    input.map { x => (x, model.predict(x)) }

  }
}

class HoeffdingTreeModel(val espec: ExampleSpecification, val numericObserverType: Int = 0,
  val splitCriterion: SplitCriterion = new InfoGainSplitCriterion(),
  var growthAllowed: Boolean = true, val binaryOnly: Boolean = true,
  val graceNum: Int = 200, val tieThreshold: Double = 0.05,
  val splitConfedence: Double = 0.0000001, val learningNodeType: Int = 0,
  val nbThreshold: Int = 0, val noPrePrune: Boolean = true,
  val removePoorFeatures: Boolean = false, val splitAll: Boolean = false)
    extends Model with Serializable with Logging {

  type T = HoeffdingTreeModel

  val numFeatures = espec.numberInputFeatures()
  val outputSpec = espec.outputFeatureSpecification(0)
  val numClasses = outputSpec.range()
  logInfo("numClasses" + outputSpec.range())
  // println("HoeffdingTreeModel: numClasses=" + outputSpec.range())

  var activeNodeCount: Int = 0
  var inactiveNodeCount: Int = 0
  var deactiveNodeCount: Int = 0
  var decisionNodeCount: Int = 0

  var baseNumExamples: Int = 0
  var blockNumExamples: Int = 0

  var lastExample: Example = null

  var root: Node = null

  var countAttemptToSplit = 0

  def this(model: HoeffdingTreeModel) {
    this(model.espec, model.numericObserverType, model.splitCriterion, model.growthAllowed,
      model.binaryOnly, model.graceNum, model.tieThreshold, model.splitConfedence,
      model.learningNodeType, model.nbThreshold, model.noPrePrune)
    activeNodeCount = model.activeNodeCount
    this.inactiveNodeCount = model.inactiveNodeCount
    this.deactiveNodeCount = model.deactiveNodeCount
    this.decisionNodeCount = model.decisionNodeCount
    baseNumExamples = model.baseNumExamples + model.blockNumExamples
//    this.root = model.root.map(_.clone)

    this.root = model.root.deepCopy()


    
    this.lastExample = model.lastExample
  }

  /* init the model */
  def init(): Unit = {
    //create an ActiveLearningNode for root
    root = createLearningNode(learningNodeType, numClasses)
    activeNodeCount += 1
    println("Learning Node Type: " + learningNodeType)
  }

  /* Empty all class distributions at leaves */
  def emptyLeaves(): Unit = {
    // val childIndex = root.children()
    // println("Root isSplitNode: " + root.isInstanceOf[SplitNode])
    if(root.isInstanceOf[SplitNode])
    {
      root.emptyClassDistribution()
    }
  }

  def checkforSum(): Unit = {
    if(root.isInstanceOf[SplitNode]){
      println("Total instances: " + root.countClassDistribution)
    }
  }

  /* Update the model from the stream of instances given for training.
   *
   * @param input an example instance
   * @return current model
   */
  override def update(example: Example): HoeffdingTreeModel = {
    blockNumExamples += 1
    lastExample = example
    if (root == null) {
      init
    }
    // filter the example instance to the responding FoundNode
    val foundNode = root.filterToLeaf(example, null, -1)
    var leafNode = foundNode.node

    if (leafNode.isInstanceOf[LearningNode]) {
      val learnNode = leafNode.asInstanceOf[LearningNode]
      //update the learning node 
      learnNode.learn(this, example)
    }
    this
  }

  /* try to split the learning node
   * 
   * @param learnNode the node which may be splitted
   * @param parent parent of the learnNode
   * @param pIndex learnNode's index of the parent
   * @return Unit 
   */
  def attemptToSplit(learnNode: LearningNode, parent: SplitNode, pIndex: Int): Unit = {
    // println("ActiveLearningNode: " + learnNode.isInstanceOf[ActiveLearningNode])
    // println("growthAllowed: " + growthAllowed)
    // println("ActiveLearningNode: " + learnNode.isInstanceOf[ActiveLearningNode])
//    println("Tree model: " + this.root.description())
    if (growthAllowed && learnNode.isInstanceOf[ActiveLearningNode]) {
      // split only happens when the tree is allowed to grow and the node is a ActiveLearningNode
      val activeNode = learnNode.asInstanceOf[ActiveLearningNode]


      val weightSeen = activeNode.addOnWeight()
      val lastSeenAddOnWeight = activeNode.lastSeenAddOnWeight()

//      println("HoeffdingTreeModel: addOnWeight = " + weightSeen)
//      println("HoeffdingTreeModel: lastSeenAddOnWeight = " + lastSeenAddOnWeight)
      if ((weightSeen - lastSeenAddOnWeight) >= graceNum) {
        countAttemptToSplit = countAttemptToSplit + 1
//        println("CountAttemptToSplit: " + countAttemptToSplit)
        val isPure = activeNode.isPure()
        // println("is Pure: " + isPure)
        if (!isPure) {
          
          // one best suggestion for each feature
          var bestSuggestions: Array[FeatureSplit] = activeNode.getBestSplitSuggestions(splitCriterion, this)
          
          //sort the suggestion based on the merit
          bestSuggestions = bestSuggestions.sorted
          // println("All suggestions: " + Utils.arraytoString(bestSuggestions))
//           println("Best suggestions: " + Utils.arraytoString(bestSuggestions))
          if (shouldSplit(activeNode, bestSuggestions)) {
            val best: FeatureSplit = bestSuggestions.last
//            println("Best suggestion: " + best.toString())
            if (best.conditionalTest == null) {
              //deactive a learning node
              deactiveLearningNode(activeNode, parent, pIndex)
            } else {
//               println("HoeffdingTree: Split!")
              logInfo("split! ")
//              logInfo("before Split:" + root.description())
              // println("HoeffdingTreeModel: beforeSplit" + root.description())
              //replace the ActiveLearningNode with a SplitNode and create children
              val splitNode: SplitNode = new SplitNode(activeNode.classDistribution, best.conditionalTest)
              for (index <- 0 until best.numSplit) {
                splitNode.setChild(index,
                  createLearningNode(learningNodeType, best.distributionFromSplit(index)))
//                println("Distribution From Split: class [" + index + "]= " + Utils.arraytoString(best.distributionFromSplit(index)))
              }
              // repalce the node
              addSplitNode(splitNode, parent, pIndex)
//              logInfo("after Split:" + root.description())
//               println("HoeffdingTreeModel: afterSplit" + root.description())
            }
            val tree_size_nodes = activeNodeCount + decisionNodeCount + inactiveNodeCount
            val tree_size_leaves = activeNodeCount + inactiveNodeCount
            logInfo("{" + tree_size_nodes + "," + tree_size_leaves + "," + activeNodeCount + "," + treeHeight() + "}")
            println("HoeffdingTreeModel: " + "{" + tree_size_nodes + "," + tree_size_leaves + "," + activeNodeCount + "," + treeHeight() + "}")


          }
          // todo manage memory
        }

        activeNode.setLastSeenAddOnWeight(weightSeen)
      }
    }
  }

  /**
   * check whether split the activeNode or not according to Heoffding bound and merit
   * @param activeNode the node which may be splitted
   * @param bestSuggestions array of FeatureSplit
   * @return Boolean
   */
  def shouldSplit(activeNode: ActiveLearningNode, bestSuggestions: Array[FeatureSplit]): Boolean = {
    if (bestSuggestions.length < 2) {
      //return value, if it's bigger than 0 --> return true, else, false.
      bestSuggestions.length > 0
    } else {
      val hoeffdingBound = computeHeoffdingBound(activeNode)
//       println("hoeffdingBound = " + hoeffdingBound)
      val length = bestSuggestions.length
      println("Best : " + bestSuggestions.last.toString())
      println("Second : " + bestSuggestions(length-2).toString())
//      println("Difference: " + (bestSuggestions.last.merit - bestSuggestions(length - 2).merit))
      if (hoeffdingBound < tieThreshold ||
        bestSuggestions.last.merit - bestSuggestions(length - 2).merit > hoeffdingBound) {
        //if differece in merit/information_gain of the Best and the Second Best larger than HoeffdingBound, 
        // return true.
        true
      } else false
    }
  }

  def desableFeatures(activeNode: ActiveLearningNode, bestSuggestions: Array[FeatureSplit], hoeffdingBound: Double): Unit = {
    if (this.removePoorFeatures) {
      val poorFeatures = new HashSet[Integer]()
      val bestSuggestion = bestSuggestions.last
      for (suggestion: FeatureSplit <- bestSuggestions) {
        if (suggestion.conditionalTest != null &&
          bestSuggestion.merit - suggestion.merit > hoeffdingBound) {
          val fIndex = suggestion.conditionalTest.featureIndex()
          poorFeatures.add(fIndex)
          activeNode.disableFeature(fIndex)
        }
      }
    }
  }

  /**
   * merge with another model's FeatureObservers and root, and try to split
   */
  def merge(that: HoeffdingTreeModel, trySplit: Boolean): HoeffdingTreeModel = {

    this.blockNumExamples += that.blockNumExamples
    this.lastExample = that.lastExample
    // merge root with another root
    // println("TrySplit: " + trySplit)
//    println("This root: "  +root.description())
//    println("That root: " + that.root.description())
//    println("This root SplitNode: " + root.isInstanceOf[SplitNode])
//    println("That root SplitNode: " + that.root.isInstanceOf[SplitNode])
    root.merge(that.root, trySplit)
    // println("Why???")
    if (trySplit) {
      if (!splitAll) {
        //try to split one leaf node
        val foundNode = root.filterToLeaf(lastExample, null, -1)
        foundNode.node match {
          case activeNode: ActiveLearningNode => {
            logInfo("attemptToSplit")
            // println("HoeffdingTreeModel: attemptToSplit")

            attemptToSplit(activeNode, foundNode.parent, foundNode.index)
          }
            // nhnminh: to fix the error of scala.matchError
          case activeNode: InactiveLearningNode => {
            logInfo("InactiveLearningNode Found!")
          }
        }
      } else {
        //try to split all leaf nodes
        val queue = new Queue[FoundNode]()
        queue.enqueue(new FoundNode(root, null, -1))
        while (queue.size > 0) {
          val foundNode = queue.dequeue()
          foundNode.node match {
            case splitNode: SplitNode => {
              for (i <- 0 until splitNode.children.length)
                queue.enqueue(new FoundNode(splitNode.children(i), splitNode, i))
            }
            case activeNode: ActiveLearningNode => {
              attemptToSplit(activeNode, foundNode.parent, foundNode.index)
            }
            case other: Node => {}
          }
        }
      }
      logInfo("{tree size (nodes),tree size (leaves),active learning leaves,tree depth}")
      // println("HoeffdingTreeModel: {tree size (nodes),tree size (leaves),active learning leaves,tree depth}")
//      val tree_size_nodes = activeNodeCount + decisionNodeCount + inactiveNodeCount
//      val tree_size_leaves = activeNodeCount + inactiveNodeCount
//      logInfo("{" + tree_size_nodes + "," + tree_size_leaves + "," + activeNodeCount + "," + treeHeight() + "}")
//      println("HoeffdingTreeModel: " + "{" + tree_size_nodes + "," + tree_size_leaves + "," + activeNodeCount + "," + treeHeight() + "}")
      // println("{activeNodeCount, inactiveNodeCount, decisionNodeCount}")
      // println("HoeffdingTreeModel: " + "{"+ activeNodeCount + "," + inactiveNodeCount + "," + decisionNodeCount + "}")
    }
    this
  }

  /* predict the class of example */
  def predict(example: Example): Double = {
    var prediction = 0.0
    if (root != null) {
      val foundNode = root.filterToLeaf(example, null, -1)
      var leafNode = foundNode.node
      if (leafNode == null) {
        leafNode = foundNode.parent
      }

      prediction = argmax(leafNode.classVotes(this, example))
//      println("       ClassDistr: "+ Utils.arraytoString(leafNode.classVotes(this,example)))
//      println("       Predict: " + prediction)
      prediction
    } else {
//      println("       Predict: " + 0)
      0.0
    }
  }

  /* create a new ActiveLearningNode
 * 
 * @param nodeType, (0,ActiveLearningNode),(1,LearningNodeNB),(2,LearningNodeNBAdaptive)
 * @param classDistribution, the classDistribution to init node
 * @return a new LearningNode
 */
  def createLearningNode(nodeType: Int, classDistribution: Array[Double]): LearningNode = nodeType match {
    case 0 => new ActiveLearningNode(classDistribution, espec.in)
    case 1 => new LearningNodeNB(classDistribution, espec.in)
    case 2 => new LearningNodeNBAdaptive(classDistribution, espec.in)
    case _ => new ActiveLearningNode(classDistribution, espec.in)
  }

  /* create a new ActiveLearningNode
 * 
 * @param nodeType, (0,ActiveLearningNode),(1,LearningNodeNB),(2,LearningNodeNBAdaptive)
 * @param numClasses, the number of the classes 
 * @return a new LearningNode
 */
  def createLearningNode(nodeType: Int, numClasses: Int): LearningNode = nodeType match {
    case 0 => new ActiveLearningNode(new Array[Double](numClasses), espec.in)
    case 1 => new LearningNodeNB(new Array[Double](numClasses), espec.in)
    case 2 => new LearningNodeNBAdaptive(new Array[Double](numClasses), espec.in)
    case _ => new ActiveLearningNode(new Array[Double](numClasses), espec.in)
  }

  /* create a new ActiveLearningNode with another LearningNode
 * 
 * @param nodeType, (0,ActiveLearningNode),(1,LearningNodeNB),(2,LearningNodeNBAdaptive)
 * @param that, a default LearningNode to init the LearningNode 
 * @return a new LearningNode
 */
  def createLearningNode(nodeType: Int, that: LearningNode): LearningNode = nodeType match {
    case 0 => new ActiveLearningNode(that.asInstanceOf[ActiveLearningNode])
    case 1 => new LearningNodeNB(that.asInstanceOf[LearningNodeNB])
    case 2 => new LearningNodeNBAdaptive(that.asInstanceOf[LearningNodeNBAdaptive])
  }

  /* repalce an InactiveLearningNode with an ActiveLearningNode
  * 
  * @paren inactiveNode which will be repalced
  * @param parent parent of the node which will be replaced
  * @param pIndex the index of node
  * @return Unit 
  */
  def activeLearningNode(inactiveNode: InactiveLearningNode, parent: SplitNode, pIndex: Int): Unit = {
    val activeNode = createLearningNode(learningNodeType, inactiveNode.classDistribution)
    if (parent == null) {
      root = activeNode
    } else {
      parent.setChild(pIndex, activeNode)
    }
    activeNodeCount += 1
    inactiveNodeCount -= 1
  }

  /* replace an ActiveLearningNode with an InactiveLearningNode
   * @param parent parent of the node which will be replaced
   * @param pIndex the index of node
   * @return Unit
   */
  def deactiveLearningNode(activeNode: ActiveLearningNode, parent: SplitNode, pIndex: Int): Unit = {
//    println("Deactive Learning Node")
//    logInfo("Deactive Learning Node")
    val deactiveNode = new InactiveLearningNode(activeNode.classDistribution)
//    println("Inactive Node created")
    if (parent == null) {
      root = deactiveNode
    } else {
//      println("No problem 1")
      parent.setChild(pIndex, deactiveNode)
    }
//    println("No problem 2")
    activeNodeCount -= 1
    inactiveNodeCount += 1

  }

  /*
   * replace a activeNode with the splitNode
   * @param splitNode the new SplitNode
   * @param parent parent of the node which will be replaced
   * @param pIndex the index of node 
   * @return Unit 
   */
  def addSplitNode(splitNode: SplitNode, parent: SplitNode, pIndex: Int): Unit = {
    if (parent == null) {
      root = splitNode
    } else {
      parent.setChild(pIndex, splitNode)
    }
    activeNodeCount += splitNode.numChildren() - 1
    // decisionNodeCount -= 1
    // @editor: nhnminh. This should be added instead of subtraction.
    decisionNodeCount += 1
  }

  /* Computes Heoffding Bound withe activeNode's class distribution. The original HoeffdingTree is computed with
   * the weight = classDistribution.sum + blockClassDistribution.sum.
   * The current version uses only classDistribution.sum as the weight.
   * @modified: nhnguyen @ 20170623
   *
   * @param activeNode 
   * @return double value
   */
  def computeHeoffdingBound(activeNode: ActiveLearningNode): Double = {
    val rangeMerit = splitCriterion.rangeMerit(activeNode.classDistribution)
//    println("***+++***+++***+++")
//    println("HoeffdingBound section: ")
//    println("==== rangeMerit: " + rangeMerit)
//    println("==== splitConfidence: " + this.splitConfedence)
//    println("==== weight: " + activeNode.weight())


    val heoffdingBound = sqrt(rangeMerit * rangeMerit * math_log(1.0 / this.splitConfedence)
      / (activeNode.weight() * 2))
//    println("***+++***+++***+++")
    heoffdingBound

  }
  /*
   * Returns the height of Hoeffding Tree
   */
  def treeHeight(): Int = {
    if (root == null) -1
    else root.height()
  }

  /* Description of the Hoeffding Tree Model
   * 
   * @return a multi-line String
   */
  def description(): String = {
    "Hoeffding Tree Model description:\n" + root.description()
  }

}

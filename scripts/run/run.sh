
cd $STREAM_DM
sbt package 
echo "Finish compiling ...."
cd scripts/
echo "Receiving data...."
# ./spark.sh "EvaluatePrequential -l (SGDLearner -l 0.01 -o LogisticLoss -r ZeroRegularizer) -e (BasicClassificationEvaluator)  " 1>sth.res 2>sth.log


start=`date +%s`
# ./spark.sh "EvaluatePrequential -l trees.HoeffdingTree -s (FileReader -f ../data/covtypeNorm.arff)" 1>hdt2.res 2>hdt2.log 
./spark.sh "EvaluatePrequential -l (trees.HoeffdingTree -l 2 -t 0.05 -g 2 -b ) -s (FileReader -f ../data/randomtreedata_100.arff -k 10)" 1> result/hdt_100_NBA_small_nominal.res 2> result/majcl4_t.log
end=`date +%s`

echo runtime = $((end-start)) "seconds"

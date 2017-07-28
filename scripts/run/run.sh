
cd $STREAM_DM
sbt package 
echo "Finish compiling ...."
cd scripts/
echo "Receiving data...."
# ./spark.sh "EvaluatePrequential -l (SGDLearner -l 0.01 -o LogisticLoss -r ZeroRegularizer) -e (BasicClassificationEvaluator)  " 1>sth.res 2>sth.log


start=`date +%s`
# ./spark.sh "EvaluatePrequential -l trees.HoeffdingTree -s (FileReader -f ../data/covtypeNorm.arff)" 1>hdt2.res 2>hdt2.log 
#./spark.sh "EvaluatePrequential -l (trees.HoeffdingTree -l 0 -t 0.05 -g 2 ) -s (FileReader -f ../data/randomtreedata.arff -k 10)" 1> result/branch1/hdt_100_NBA.res 2> result/branch1/majcl4_t.log
#./spark.sh "EvaluatePrequential -l (trees.HoeffdingTree -l 2 -t 0.05 -g 200 ) -s (FileReader -f ../data/randomtreedata.arff -k 2000 -d 100)" 1> result/hdt_1000_NBA.res 2> result/majcl4_t.log
./spark.sh "EvaluatePrequential -l (trees.HoeffdingTree -l 2 -t 0.05 -g 200 ) -s (FileReader -f ../data/covtypeNorm.arff -k 10000 -d 1000)" 1> result/hdt_1000_NBA_cov.res 2> result/majcl4_t.log
end=`date +%s`

echo runtime = $((end-start)) "seconds"

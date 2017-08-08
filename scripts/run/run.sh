
cd $STREAM_DM
sbt package 
echo "Finish compiling ...."
cd scripts/
echo "Receiving data...."
# ./spark.sh "EvaluatePrequential -l (SGDLearner -l 0.01 -o LogisticLoss -r ZeroRegularizer) -e (BasicClassificationEvaluator)  " 1>sth.res 2>sth.log


start=`date +%s`

### randomtreedata -----
#./spark.sh "EvaluatePrequential  -l (trees.HoeffdingTree -l 0 -t 0.05 -g 200 ) -s (FileReader -f ../data/randomtreedata.arff -k 10000 -i 1000000 -d 1000)" 1> result/hdt_1000_MC.res 2> result/majcl4_t.log
#./spark.sh "EvaluatePrequential  -l (trees.HoeffdingTree -l 2 -t 0.05 -g 200 ) -s (FileReader -f ../data/randomtreedata.arff -k 10000 -i 1000000 -d 1000)" 1> result/hdt_1000_NBA.res 2> result/majcl4_t.log

### covTypeNorm ------
#./spark.sh "EvaluatePrequential  -l (trees.HoeffdingTree -l 2 -t 0.05 -g 200 ) -s (FileReader -f ../data/covtypeNorm.arff -k 10000 -i 581000 -d 1000)" 1> result/hdt_1000_NBA_cov.res 2> result/majcl4_t.log
#./spark.sh "EvaluatePrequential  -l (trees.HoeffdingTree -l 0 -t 0.05 -g 200 ) -s (FileReader -f ../data/covtypeNorm.arff -k 1000 -i 581000 -d 1000)" 1> result/hdt_1000_MC_cov.res 2> result/majcl4_t.log



###covTypeNorm + parallel ---
./spark.sh "EvaluatePrequential  -l (trees.HoeffdingTree -l 0 -t 0.05 -g 200 ) -s (FileReader -f ../data/covtypeNorm.arff -k 10000 -i 581000 -d 10)" 1> result/hdt_1000_MC_cov_p.res 2> result/majcl4_t.log
#./spark.sh "EvaluatePrequential  -l (trees.HoeffdingTree -l 2 -t 0.05 -g 200 ) -s (FileReader -f ../data/covtypeNorm.arff -k 10000 -i 581000 -d 100)" 1> result/hdt_1000_NBA_cov_p.res 2> result/majcl4_t.log

###randomtreedata + parallel ---
#./spark.sh "EvaluatePrequential  -l (trees.HoeffdingTree -l 0 -t 0.05 -g 200 ) -s (FileReader -f ../data/randomtreedata.arff -k 10000 -i 1000000 -d 10)" 1> result/hdt_1000_MC_p.res 2> result/majcl4_t.log
#./spark.sh "EvaluatePrequential  -l (trees.HoeffdingTree -l 2 -t 0.05 -g 200 ) -s (FileReader -f ../data/randomtreedata.arff -k 10000 -i 1000000 -d 100)" 1> result/hdt_1000_NBA_p.res 2> result/majcl4_t.log

### elecNormNew

#./spark.sh "EvaluatePrequential  -l (trees.HoeffdingTree -l 0 -t 0.05 -g 200 ) -s (FileReader -f ../data/electNormNew.arff -k 4000 -i 45000 -d 10)" 1> result/hdt_1000_MC_elec_p.res 2> result/majcl4_t.log
#./spark.sh "EvaluatePrequential  -l (trees.HoeffdingTree -l 2 -t 0.05 -g 200 ) -s (FileReader -f ../data/electNormNew.arff -k 4000 -i 45000 -d 10)" 1> result/hdt_1000_NBA_elec_p.res 2> result/majcl4_t.log

###randomtreedataComplex + parallel
#./spark.sh "EvaluatePrequential  -l (trees.HoeffdingTree -l 0 -t 0.05 -g 200 ) -s (FileReader -f ../data/randomtreedataComplex.arff -k 10000 -i 1000000 -d 100)" 1> result/hdt_1000_MC_complex_p.res 2> result/majcl4_t.log


end=`date +%s`
echo runtime = $((end-start)) "seconds"

../data/randomtreedata.arff
Learning Node Type: 2
File reading gets started.
FileReader RDD count:10000
==============================
Counter: 10000
Chunk: 10000
This root: Leaf weight = {0.0,0.0}{0.0,0.0}

That root: Leaf weight = {0.0,0.0}{2089.0,2911.0}

LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
This root: Leaf weight = {0.0,0.0}{2089.0,2911.0}

That root: Leaf weight = {0.0,0.0}{2007.0,2993.0}

LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
tmodel: Hoeffding Tree Model description:
Leaf weight = {0.0,0.0}{4096.0,5904.0}

Before merge: Hoeffding Tree Model description:
Leaf weight = {0.0,0.0}{0.0,0.0}

This root: Leaf weight = {0.0,0.0}{0.0,0.0}

That root: Leaf weight = {0.0,0.0}{4096.0,5904.0}

LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
HoeffdingTreeModel: addOnWeight = 10000.0
Best suggestion: FeatureSplit, merit=0.4785365748236884, NumericBinaryTest(false) feature[5] = 0.9999057216873717
Distribution From Split: class [0]= {1328.9310471486347,5904.0}
Distribution From Split: class [1]= {2767.0689528513653,0.0}
HoeffdingTreeModel: {3,2,2,2}
After merge: Hoeffding Tree Model description:

 if [feature 5 numeric 0] < 0.9999057216873717
  Leaf weight = {1328.9310471486347,5904.0}{0.0,0.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2767.0689528513653,0.0}{0.0,0.0}

Total instances: 10000.0
Accuracy: 0.410, Correct: 4096.000, Total: 10000.000
FileReader RDD count:10000
==============================
Counter: 20000
Chunk: 10000
This root: 
 if [feature 5 numeric 0] < 0.9999057216873717
  Leaf weight = {1328.9310471486347,5904.0}{0.0,0.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2767.0689528513653,0.0}{0.0,0.0}

That root: 
 if [feature 5 numeric 0] < 0.9999057216873717
  Leaf weight = {1328.9310471486347,5904.0}{2137.0,2862.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2767.0689528513653,0.0}{1.0,0.0}

LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
This root: 
 if [feature 5 numeric 0] < 0.9999057216873717
  Leaf weight = {1328.9310471486347,5904.0}{2137.0,2862.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2767.0689528513653,0.0}{1.0,0.0}

That root: 
 if [feature 5 numeric 0] < 0.9999057216873717
  Leaf weight = {1328.9310471486347,5904.0}{2109.0,2890.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2767.0689528513653,0.0}{0.0,1.0}

LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
tmodel: Hoeffding Tree Model description:

 if [feature 5 numeric 0] < 0.9999057216873717
  Leaf weight = {1328.9310471486347,5904.0}{4246.0,5752.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2767.0689528513653,0.0}{1.0,1.0}

Before merge: Hoeffding Tree Model description:

 if [feature 5 numeric 0] < 0.9999057216873717
  Leaf weight = {1328.9310471486347,5904.0}{0.0,0.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2767.0689528513653,0.0}{0.0,0.0}

This root: 
 if [feature 5 numeric 0] < 0.9999057216873717
  Leaf weight = {1328.9310471486347,5904.0}{0.0,0.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2767.0689528513653,0.0}{0.0,0.0}

That root: 
 if [feature 5 numeric 0] < 0.9999057216873717
  Leaf weight = {1328.9310471486347,5904.0}{4246.0,5752.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2767.0689528513653,0.0}{1.0,1.0}

LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
HoeffdingTreeModel: addOnWeight = 9998.0
Best suggestion: FeatureSplit, merit=0.07306136451445189, NominalMultiwayTestfeature[4] 5
Distribution From Split: class [0]= {258.0,1740.0}
Distribution From Split: class [1]= {587.0,1378.0}
Distribution From Split: class [2]= {1581.0,438.0}
Distribution From Split: class [3]= {891.0,1133.0}
Distribution From Split: class [4]= {929.0,1063.0}
HoeffdingTreeModel: {8,6,6,7}
After merge: Hoeffding Tree Model description:

 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      Leaf weight = {258.0,1740.0}{0.0,0.0}
   if [feature 4 nominal 1] == 1
      Leaf weight = {587.0,1378.0}{0.0,0.0}
   if [feature 4 nominal 2] == 2
      Leaf weight = {1581.0,438.0}{0.0,0.0}
   if [feature 4 nominal 3] == 3
      Leaf weight = {891.0,1133.0}{0.0,0.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {929.0,1063.0}{0.0,0.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2768.0689528513653,1.0}{0.0,0.0}

Total instances: 12767.068952851365
Accuracy: 0.417, Correct: 8344.000, Total: 20000.000
FileReader RDD count:10000
==============================
Counter: 30000
Chunk: 10000
This root: 
 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      Leaf weight = {258.0,1740.0}{0.0,0.0}
   if [feature 4 nominal 1] == 1
      Leaf weight = {587.0,1378.0}{0.0,0.0}
   if [feature 4 nominal 2] == 2
      Leaf weight = {1581.0,438.0}{0.0,0.0}
   if [feature 4 nominal 3] == 3
      Leaf weight = {891.0,1133.0}{0.0,0.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {929.0,1063.0}{0.0,0.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2768.0689528513653,1.0}{0.0,0.0}

That root: 
 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      Leaf weight = {258.0,1740.0}{114.0,877.0}
   if [feature 4 nominal 1] == 1
      Leaf weight = {587.0,1378.0}{298.0,707.0}
   if [feature 4 nominal 2] == 2
      Leaf weight = {1581.0,438.0}{755.0,223.0}
   if [feature 4 nominal 3] == 3
      Leaf weight = {891.0,1133.0}{482.0,566.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {929.0,1063.0}{458.0,519.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2768.0689528513653,1.0}{0.0,1.0}

LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
This root: 
 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      Leaf weight = {258.0,1740.0}{114.0,877.0}
   if [feature 4 nominal 1] == 1
      Leaf weight = {587.0,1378.0}{298.0,707.0}
   if [feature 4 nominal 2] == 2
      Leaf weight = {1581.0,438.0}{755.0,223.0}
   if [feature 4 nominal 3] == 3
      Leaf weight = {891.0,1133.0}{482.0,566.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {929.0,1063.0}{458.0,519.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2768.0689528513653,1.0}{0.0,1.0}

That root: 
 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      Leaf weight = {258.0,1740.0}{113.0,939.0}
   if [feature 4 nominal 1] == 1
      Leaf weight = {587.0,1378.0}{301.0,683.0}
   if [feature 4 nominal 2] == 2
      Leaf weight = {1581.0,438.0}{730.0,227.0}
   if [feature 4 nominal 3] == 3
      Leaf weight = {891.0,1133.0}{430.0,568.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {929.0,1063.0}{465.0,543.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2768.0689528513653,1.0}{0.0,1.0}

LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
tmodel: Hoeffding Tree Model description:

 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      Leaf weight = {258.0,1740.0}{227.0,1816.0}
   if [feature 4 nominal 1] == 1
      Leaf weight = {587.0,1378.0}{599.0,1390.0}
   if [feature 4 nominal 2] == 2
      Leaf weight = {1581.0,438.0}{1485.0,450.0}
   if [feature 4 nominal 3] == 3
      Leaf weight = {891.0,1133.0}{912.0,1134.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {929.0,1063.0}{923.0,1062.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2768.0689528513653,1.0}{0.0,2.0}

Before merge: Hoeffding Tree Model description:

 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      Leaf weight = {258.0,1740.0}{0.0,0.0}
   if [feature 4 nominal 1] == 1
      Leaf weight = {587.0,1378.0}{0.0,0.0}
   if [feature 4 nominal 2] == 2
      Leaf weight = {1581.0,438.0}{0.0,0.0}
   if [feature 4 nominal 3] == 3
      Leaf weight = {891.0,1133.0}{0.0,0.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {929.0,1063.0}{0.0,0.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2768.0689528513653,1.0}{0.0,0.0}

This root: 
 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      Leaf weight = {258.0,1740.0}{0.0,0.0}
   if [feature 4 nominal 1] == 1
      Leaf weight = {587.0,1378.0}{0.0,0.0}
   if [feature 4 nominal 2] == 2
      Leaf weight = {1581.0,438.0}{0.0,0.0}
   if [feature 4 nominal 3] == 3
      Leaf weight = {891.0,1133.0}{0.0,0.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {929.0,1063.0}{0.0,0.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2768.0689528513653,1.0}{0.0,0.0}

That root: 
 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      Leaf weight = {258.0,1740.0}{227.0,1816.0}
   if [feature 4 nominal 1] == 1
      Leaf weight = {587.0,1378.0}{599.0,1390.0}
   if [feature 4 nominal 2] == 2
      Leaf weight = {1581.0,438.0}{1485.0,450.0}
   if [feature 4 nominal 3] == 3
      Leaf weight = {891.0,1133.0}{912.0,1134.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {929.0,1063.0}{923.0,1062.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2768.0689528513653,1.0}{0.0,2.0}

LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
HoeffdingTreeModel: addOnWeight = 2046.0
Best suggestion: FeatureSplit, merit=0.5089604159727661, NumericBinaryTest(false) feature[5] = 0.9994316035286038
Distribution From Split: class [0]= {267.4138173190388,1134.0}
Distribution From Split: class [1]= {644.5861826809612,0.0}
HoeffdingTreeModel: {10,7,7,7}
After merge: Hoeffding Tree Model description:

 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      Leaf weight = {485.0,3556.0}{0.0,0.0}
   if [feature 4 nominal 1] == 1
      Leaf weight = {1186.0,2768.0}{0.0,0.0}
   if [feature 4 nominal 2] == 2
      Leaf weight = {3066.0,888.0}{0.0,0.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          Leaf weight = {267.4138173190388,1134.0}{0.0,0.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,0.0}{0.0,0.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {1852.0,2125.0}{0.0,0.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2768.0689528513653,3.0}{0.0,0.0}

Total instances: 20743.068952851365
Accuracy: 0.506, Correct: 15174.000, Total: 30000.000
FileReader RDD count:10000
==============================
Counter: 40000
Chunk: 10000
This root: 
 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      Leaf weight = {485.0,3556.0}{0.0,0.0}
   if [feature 4 nominal 1] == 1
      Leaf weight = {1186.0,2768.0}{0.0,0.0}
   if [feature 4 nominal 2] == 2
      Leaf weight = {3066.0,888.0}{0.0,0.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          Leaf weight = {267.4138173190388,1134.0}{0.0,0.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,0.0}{0.0,0.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {1852.0,2125.0}{0.0,0.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2768.0689528513653,3.0}{0.0,0.0}

That root: 
 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      Leaf weight = {485.0,3556.0}{126.0,871.0}
   if [feature 4 nominal 1] == 1
      Leaf weight = {1186.0,2768.0}{308.0,689.0}
   if [feature 4 nominal 2] == 2
      Leaf weight = {3066.0,888.0}{790.0,230.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          Leaf weight = {267.4138173190388,1134.0}{449.0,519.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,0.0}{0.0,0.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {1852.0,2125.0}{444.0,573.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2768.0689528513653,3.0}{1.0,0.0}

LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
This root: 
 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      Leaf weight = {485.0,3556.0}{126.0,871.0}
   if [feature 4 nominal 1] == 1
      Leaf weight = {1186.0,2768.0}{308.0,689.0}
   if [feature 4 nominal 2] == 2
      Leaf weight = {3066.0,888.0}{790.0,230.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          Leaf weight = {267.4138173190388,1134.0}{449.0,519.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,0.0}{0.0,0.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {1852.0,2125.0}{444.0,573.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2768.0689528513653,3.0}{1.0,0.0}

That root: 
 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      Leaf weight = {485.0,3556.0}{120.0,897.0}
   if [feature 4 nominal 1] == 1
      Leaf weight = {1186.0,2768.0}{291.0,693.0}
   if [feature 4 nominal 2] == 2
      Leaf weight = {3066.0,888.0}{788.0,224.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          Leaf weight = {267.4138173190388,1134.0}{455.0,554.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,0.0}{0.0,0.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {1852.0,2125.0}{460.0,518.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2768.0689528513653,3.0}{0.0,0.0}

LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
tmodel: Hoeffding Tree Model description:

 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      Leaf weight = {485.0,3556.0}{246.0,1768.0}
   if [feature 4 nominal 1] == 1
      Leaf weight = {1186.0,2768.0}{599.0,1382.0}
   if [feature 4 nominal 2] == 2
      Leaf weight = {3066.0,888.0}{1578.0,454.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          Leaf weight = {267.4138173190388,1134.0}{904.0,1073.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,0.0}{0.0,0.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {1852.0,2125.0}{904.0,1091.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2768.0689528513653,3.0}{1.0,0.0}

Before merge: Hoeffding Tree Model description:

 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      Leaf weight = {485.0,3556.0}{0.0,0.0}
   if [feature 4 nominal 1] == 1
      Leaf weight = {1186.0,2768.0}{0.0,0.0}
   if [feature 4 nominal 2] == 2
      Leaf weight = {3066.0,888.0}{0.0,0.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          Leaf weight = {267.4138173190388,1134.0}{0.0,0.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,0.0}{0.0,0.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {1852.0,2125.0}{0.0,0.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2768.0689528513653,3.0}{0.0,0.0}

This root: 
 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      Leaf weight = {485.0,3556.0}{0.0,0.0}
   if [feature 4 nominal 1] == 1
      Leaf weight = {1186.0,2768.0}{0.0,0.0}
   if [feature 4 nominal 2] == 2
      Leaf weight = {3066.0,888.0}{0.0,0.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          Leaf weight = {267.4138173190388,1134.0}{0.0,0.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,0.0}{0.0,0.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {1852.0,2125.0}{0.0,0.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2768.0689528513653,3.0}{0.0,0.0}

That root: 
 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      Leaf weight = {485.0,3556.0}{246.0,1768.0}
   if [feature 4 nominal 1] == 1
      Leaf weight = {1186.0,2768.0}{599.0,1382.0}
   if [feature 4 nominal 2] == 2
      Leaf weight = {3066.0,888.0}{1578.0,454.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          Leaf weight = {267.4138173190388,1134.0}{904.0,1073.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,0.0}{0.0,0.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {1852.0,2125.0}{904.0,1091.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2768.0689528513653,3.0}{1.0,0.0}

LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
HoeffdingTreeModel: addOnWeight = 3970.0
Best suggestion: FeatureSplit, merit=0.11404247917520782, NominalMultiwayTestfeature[2] 5
Distribution From Split: class [0]= {317.0,480.0}
Distribution From Split: class [1]= {103.0,641.0}
Distribution From Split: class [2]= {76.0,744.0}
Distribution From Split: class [3]= {470.0,328.0}
Distribution From Split: class [4]= {232.0,579.0}
HoeffdingTreeModel: {15,11,11,11}
After merge: Hoeffding Tree Model description:

 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      Leaf weight = {731.0,5324.0}{0.0,0.0}
   if [feature 4 nominal 1] == 1
      
     if [feature 2 nominal 0] == 0
          Leaf weight = {317.0,480.0}{0.0,0.0}
     if [feature 2 nominal 1] == 1
          Leaf weight = {103.0,641.0}{0.0,0.0}
     if [feature 2 nominal 2] == 2
          Leaf weight = {76.0,744.0}{0.0,0.0}
     if [feature 2 nominal 3] == 3
          Leaf weight = {470.0,328.0}{0.0,0.0}
     if [feature 2 nominal 4] == 4
          Leaf weight = {232.0,579.0}{0.0,0.0}
   if [feature 4 nominal 2] == 2
      Leaf weight = {4644.0,1342.0}{0.0,0.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          Leaf weight = {1171.4138173190388,2207.0}{0.0,0.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,0.0}{0.0,0.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {2756.0,3216.0}{0.0,0.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2769.0689528513653,3.0}{0.0,0.0}

Total instances: 28778.068952851365
Accuracy: 0.549, Correct: 21962.000, Total: 40000.000
FileReader RDD count:10000
==============================
Counter: 50000
Chunk: 10000
This root: 
 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      Leaf weight = {731.0,5324.0}{0.0,0.0}
   if [feature 4 nominal 1] == 1
      
     if [feature 2 nominal 0] == 0
          Leaf weight = {317.0,480.0}{0.0,0.0}
     if [feature 2 nominal 1] == 1
          Leaf weight = {103.0,641.0}{0.0,0.0}
     if [feature 2 nominal 2] == 2
          Leaf weight = {76.0,744.0}{0.0,0.0}
     if [feature 2 nominal 3] == 3
          Leaf weight = {470.0,328.0}{0.0,0.0}
     if [feature 2 nominal 4] == 4
          Leaf weight = {232.0,579.0}{0.0,0.0}
   if [feature 4 nominal 2] == 2
      Leaf weight = {4644.0,1342.0}{0.0,0.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          Leaf weight = {1171.4138173190388,2207.0}{0.0,0.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,0.0}{0.0,0.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {2756.0,3216.0}{0.0,0.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2769.0689528513653,3.0}{0.0,0.0}

That root: 
 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      Leaf weight = {731.0,5324.0}{135.0,836.0}
   if [feature 4 nominal 1] == 1
      
     if [feature 2 nominal 0] == 0
          Leaf weight = {317.0,480.0}{95.0,115.0}
     if [feature 2 nominal 1] == 1
          Leaf weight = {103.0,641.0}{28.0,172.0}
     if [feature 2 nominal 2] == 2
          Leaf weight = {76.0,744.0}{13.0,195.0}
     if [feature 2 nominal 3] == 3
          Leaf weight = {470.0,328.0}{96.0,84.0}
     if [feature 2 nominal 4] == 4
          Leaf weight = {232.0,579.0}{67.0,140.0}
   if [feature 4 nominal 2] == 2
      Leaf weight = {4644.0,1342.0}{788.0,221.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          Leaf weight = {1171.4138173190388,2207.0}{442.0,563.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,0.0}{0.0,0.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {2756.0,3216.0}{447.0,561.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2769.0689528513653,3.0}{1.0,1.0}

LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
This root: 
 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      Leaf weight = {731.0,5324.0}{135.0,836.0}
   if [feature 4 nominal 1] == 1
      
     if [feature 2 nominal 0] == 0
          Leaf weight = {317.0,480.0}{95.0,115.0}
     if [feature 2 nominal 1] == 1
          Leaf weight = {103.0,641.0}{28.0,172.0}
     if [feature 2 nominal 2] == 2
          Leaf weight = {76.0,744.0}{13.0,195.0}
     if [feature 2 nominal 3] == 3
          Leaf weight = {470.0,328.0}{96.0,84.0}
     if [feature 2 nominal 4] == 4
          Leaf weight = {232.0,579.0}{67.0,140.0}
   if [feature 4 nominal 2] == 2
      Leaf weight = {4644.0,1342.0}{788.0,221.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          Leaf weight = {1171.4138173190388,2207.0}{442.0,563.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,0.0}{0.0,0.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {2756.0,3216.0}{447.0,561.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2769.0689528513653,3.0}{1.0,1.0}

That root: 
 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      Leaf weight = {731.0,5324.0}{135.0,903.0}
   if [feature 4 nominal 1] == 1
      
     if [feature 2 nominal 0] == 0
          Leaf weight = {317.0,480.0}{84.0,108.0}
     if [feature 2 nominal 1] == 1
          Leaf weight = {103.0,641.0}{27.0,181.0}
     if [feature 2 nominal 2] == 2
          Leaf weight = {76.0,744.0}{8.0,172.0}
     if [feature 2 nominal 3] == 3
          Leaf weight = {470.0,328.0}{122.0,77.0}
     if [feature 2 nominal 4] == 4
          Leaf weight = {232.0,579.0}{60.0,127.0}
   if [feature 4 nominal 2] == 2
      Leaf weight = {4644.0,1342.0}{732.0,218.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          Leaf weight = {1171.4138173190388,2207.0}{425.0,576.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,0.0}{0.0,0.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {2756.0,3216.0}{471.0,573.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2769.0689528513653,3.0}{0.0,1.0}

LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
tmodel: Hoeffding Tree Model description:

 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      Leaf weight = {731.0,5324.0}{270.0,1739.0}
   if [feature 4 nominal 1] == 1
      
     if [feature 2 nominal 0] == 0
          Leaf weight = {317.0,480.0}{179.0,223.0}
     if [feature 2 nominal 1] == 1
          Leaf weight = {103.0,641.0}{55.0,353.0}
     if [feature 2 nominal 2] == 2
          Leaf weight = {76.0,744.0}{21.0,367.0}
     if [feature 2 nominal 3] == 3
          Leaf weight = {470.0,328.0}{218.0,161.0}
     if [feature 2 nominal 4] == 4
          Leaf weight = {232.0,579.0}{127.0,267.0}
   if [feature 4 nominal 2] == 2
      Leaf weight = {4644.0,1342.0}{1520.0,439.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          Leaf weight = {1171.4138173190388,2207.0}{867.0,1139.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,0.0}{0.0,0.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {2756.0,3216.0}{918.0,1134.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2769.0689528513653,3.0}{1.0,2.0}

Before merge: Hoeffding Tree Model description:

 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      Leaf weight = {731.0,5324.0}{0.0,0.0}
   if [feature 4 nominal 1] == 1
      
     if [feature 2 nominal 0] == 0
          Leaf weight = {317.0,480.0}{0.0,0.0}
     if [feature 2 nominal 1] == 1
          Leaf weight = {103.0,641.0}{0.0,0.0}
     if [feature 2 nominal 2] == 2
          Leaf weight = {76.0,744.0}{0.0,0.0}
     if [feature 2 nominal 3] == 3
          Leaf weight = {470.0,328.0}{0.0,0.0}
     if [feature 2 nominal 4] == 4
          Leaf weight = {232.0,579.0}{0.0,0.0}
   if [feature 4 nominal 2] == 2
      Leaf weight = {4644.0,1342.0}{0.0,0.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          Leaf weight = {1171.4138173190388,2207.0}{0.0,0.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,0.0}{0.0,0.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {2756.0,3216.0}{0.0,0.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2769.0689528513653,3.0}{0.0,0.0}

This root: 
 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      Leaf weight = {731.0,5324.0}{0.0,0.0}
   if [feature 4 nominal 1] == 1
      
     if [feature 2 nominal 0] == 0
          Leaf weight = {317.0,480.0}{0.0,0.0}
     if [feature 2 nominal 1] == 1
          Leaf weight = {103.0,641.0}{0.0,0.0}
     if [feature 2 nominal 2] == 2
          Leaf weight = {76.0,744.0}{0.0,0.0}
     if [feature 2 nominal 3] == 3
          Leaf weight = {470.0,328.0}{0.0,0.0}
     if [feature 2 nominal 4] == 4
          Leaf weight = {232.0,579.0}{0.0,0.0}
   if [feature 4 nominal 2] == 2
      Leaf weight = {4644.0,1342.0}{0.0,0.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          Leaf weight = {1171.4138173190388,2207.0}{0.0,0.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,0.0}{0.0,0.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {2756.0,3216.0}{0.0,0.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2769.0689528513653,3.0}{0.0,0.0}

That root: 
 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      Leaf weight = {731.0,5324.0}{270.0,1739.0}
   if [feature 4 nominal 1] == 1
      
     if [feature 2 nominal 0] == 0
          Leaf weight = {317.0,480.0}{179.0,223.0}
     if [feature 2 nominal 1] == 1
          Leaf weight = {103.0,641.0}{55.0,353.0}
     if [feature 2 nominal 2] == 2
          Leaf weight = {76.0,744.0}{21.0,367.0}
     if [feature 2 nominal 3] == 3
          Leaf weight = {470.0,328.0}{218.0,161.0}
     if [feature 2 nominal 4] == 4
          Leaf weight = {232.0,579.0}{127.0,267.0}
   if [feature 4 nominal 2] == 2
      Leaf weight = {4644.0,1342.0}{1520.0,439.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          Leaf weight = {1171.4138173190388,2207.0}{867.0,1139.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,0.0}{0.0,0.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {2756.0,3216.0}{918.0,1134.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2769.0689528513653,3.0}{1.0,2.0}

LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
HoeffdingTreeModel: addOnWeight = 6066.0
Best suggestion: FeatureSplit, merit=0.2361327036609328, NumericBinaryTest(false) feature[8] = 0.6998122671377988
Distribution From Split: class [0]= {394.6529553186302,6373.913903662247}
Distribution From Split: class [1]= {348.3470446813698,0.0}
HoeffdingTreeModel: {17,12,12,11}
After merge: Hoeffding Tree Model description:

 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      
     if [feature 8 numeric 0] < 0.6998122671377988
          Leaf weight = {394.6529553186302,6373.913903662247}{0.0,0.0}
     if [feature 8 numeric 1] >= 0.6998122671377988
          Leaf weight = {348.3470446813698,0.0}{0.0,0.0}
   if [feature 4 nominal 1] == 1
      
     if [feature 2 nominal 0] == 0
          Leaf weight = {496.0,703.0}{0.0,0.0}
     if [feature 2 nominal 1] == 1
          Leaf weight = {158.0,994.0}{0.0,0.0}
     if [feature 2 nominal 2] == 2
          Leaf weight = {97.0,1111.0}{0.0,0.0}
     if [feature 2 nominal 3] == 3
          Leaf weight = {688.0,489.0}{0.0,0.0}
     if [feature 2 nominal 4] == 4
          Leaf weight = {359.0,846.0}{0.0,0.0}
   if [feature 4 nominal 2] == 2
      Leaf weight = {6164.0,1781.0}{0.0,0.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          Leaf weight = {2038.4138173190388,3346.0}{0.0,0.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,0.0}{0.0,0.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {3674.0,4350.0}{0.0,0.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2770.0689528513653,5.0}{0.0,0.0}

Total instances: 37830.98285651362
Accuracy: 0.571, Correct: 28543.000, Total: 50000.000
FileReader RDD count:10000
==============================
Counter: 60000
Chunk: 10000
This root: 
 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      
     if [feature 8 numeric 0] < 0.6998122671377988
          Leaf weight = {394.6529553186302,6373.913903662247}{0.0,0.0}
     if [feature 8 numeric 1] >= 0.6998122671377988
          Leaf weight = {348.3470446813698,0.0}{0.0,0.0}
   if [feature 4 nominal 1] == 1
      
     if [feature 2 nominal 0] == 0
          Leaf weight = {496.0,703.0}{0.0,0.0}
     if [feature 2 nominal 1] == 1
          Leaf weight = {158.0,994.0}{0.0,0.0}
     if [feature 2 nominal 2] == 2
          Leaf weight = {97.0,1111.0}{0.0,0.0}
     if [feature 2 nominal 3] == 3
          Leaf weight = {688.0,489.0}{0.0,0.0}
     if [feature 2 nominal 4] == 4
          Leaf weight = {359.0,846.0}{0.0,0.0}
   if [feature 4 nominal 2] == 2
      Leaf weight = {6164.0,1781.0}{0.0,0.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          Leaf weight = {2038.4138173190388,3346.0}{0.0,0.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,0.0}{0.0,0.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {3674.0,4350.0}{0.0,0.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2770.0689528513653,5.0}{0.0,0.0}

That root: 
 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      
     if [feature 8 numeric 0] < 0.6998122671377988
          Leaf weight = {394.6529553186302,6373.913903662247}{106.0,614.0}
     if [feature 8 numeric 1] >= 0.6998122671377988
          Leaf weight = {348.3470446813698,0.0}{19.0,271.0}
   if [feature 4 nominal 1] == 1
      
     if [feature 2 nominal 0] == 0
          Leaf weight = {496.0,703.0}{106.0,109.0}
     if [feature 2 nominal 1] == 1
          Leaf weight = {158.0,994.0}{35.0,159.0}
     if [feature 2 nominal 2] == 2
          Leaf weight = {97.0,1111.0}{13.0,192.0}
     if [feature 2 nominal 3] == 3
          Leaf weight = {688.0,489.0}{98.0,97.0}
     if [feature 2 nominal 4] == 4
          Leaf weight = {359.0,846.0}{66.0,138.0}
   if [feature 4 nominal 2] == 2
      Leaf weight = {6164.0,1781.0}{787.0,197.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          Leaf weight = {2038.4138173190388,3346.0}{456.0,574.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,0.0}{0.0,0.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {3674.0,4350.0}{434.0,529.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2770.0689528513653,5.0}{0.0,0.0}

LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
This root: 
 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      
     if [feature 8 numeric 0] < 0.6998122671377988
          Leaf weight = {394.6529553186302,6373.913903662247}{106.0,614.0}
     if [feature 8 numeric 1] >= 0.6998122671377988
          Leaf weight = {348.3470446813698,0.0}{19.0,271.0}
   if [feature 4 nominal 1] == 1
      
     if [feature 2 nominal 0] == 0
          Leaf weight = {496.0,703.0}{106.0,109.0}
     if [feature 2 nominal 1] == 1
          Leaf weight = {158.0,994.0}{35.0,159.0}
     if [feature 2 nominal 2] == 2
          Leaf weight = {97.0,1111.0}{13.0,192.0}
     if [feature 2 nominal 3] == 3
          Leaf weight = {688.0,489.0}{98.0,97.0}
     if [feature 2 nominal 4] == 4
          Leaf weight = {359.0,846.0}{66.0,138.0}
   if [feature 4 nominal 2] == 2
      Leaf weight = {6164.0,1781.0}{787.0,197.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          Leaf weight = {2038.4138173190388,3346.0}{456.0,574.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,0.0}{0.0,0.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {3674.0,4350.0}{434.0,529.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2770.0689528513653,5.0}{0.0,0.0}

That root: 
 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      
     if [feature 8 numeric 0] < 0.6998122671377988
          Leaf weight = {394.6529553186302,6373.913903662247}{104.0,557.0}
     if [feature 8 numeric 1] >= 0.6998122671377988
          Leaf weight = {348.3470446813698,0.0}{15.0,281.0}
   if [feature 4 nominal 1] == 1
      
     if [feature 2 nominal 0] == 0
          Leaf weight = {496.0,703.0}{79.0,92.0}
     if [feature 2 nominal 1] == 1
          Leaf weight = {158.0,994.0}{19.0,166.0}
     if [feature 2 nominal 2] == 2
          Leaf weight = {97.0,1111.0}{18.0,171.0}
     if [feature 2 nominal 3] == 3
          Leaf weight = {688.0,489.0}{116.0,98.0}
     if [feature 2 nominal 4] == 4
          Leaf weight = {359.0,846.0}{69.0,116.0}
   if [feature 4 nominal 2] == 2
      Leaf weight = {6164.0,1781.0}{875.0,204.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          Leaf weight = {2038.4138173190388,3346.0}{440.0,599.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,0.0}{0.0,1.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {3674.0,4350.0}{451.0,528.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2770.0689528513653,5.0}{0.0,1.0}

LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
tmodel: Hoeffding Tree Model description:

 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      
     if [feature 8 numeric 0] < 0.6998122671377988
          Leaf weight = {394.6529553186302,6373.913903662247}{210.0,1171.0}
     if [feature 8 numeric 1] >= 0.6998122671377988
          Leaf weight = {348.3470446813698,0.0}{34.0,552.0}
   if [feature 4 nominal 1] == 1
      
     if [feature 2 nominal 0] == 0
          Leaf weight = {496.0,703.0}{185.0,201.0}
     if [feature 2 nominal 1] == 1
          Leaf weight = {158.0,994.0}{54.0,325.0}
     if [feature 2 nominal 2] == 2
          Leaf weight = {97.0,1111.0}{31.0,363.0}
     if [feature 2 nominal 3] == 3
          Leaf weight = {688.0,489.0}{214.0,195.0}
     if [feature 2 nominal 4] == 4
          Leaf weight = {359.0,846.0}{135.0,254.0}
   if [feature 4 nominal 2] == 2
      Leaf weight = {6164.0,1781.0}{1662.0,401.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          Leaf weight = {2038.4138173190388,3346.0}{896.0,1173.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,0.0}{0.0,1.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {3674.0,4350.0}{885.0,1057.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2770.0689528513653,5.0}{0.0,1.0}

Before merge: Hoeffding Tree Model description:

 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      
     if [feature 8 numeric 0] < 0.6998122671377988
          Leaf weight = {394.6529553186302,6373.913903662247}{0.0,0.0}
     if [feature 8 numeric 1] >= 0.6998122671377988
          Leaf weight = {348.3470446813698,0.0}{0.0,0.0}
   if [feature 4 nominal 1] == 1
      
     if [feature 2 nominal 0] == 0
          Leaf weight = {496.0,703.0}{0.0,0.0}
     if [feature 2 nominal 1] == 1
          Leaf weight = {158.0,994.0}{0.0,0.0}
     if [feature 2 nominal 2] == 2
          Leaf weight = {97.0,1111.0}{0.0,0.0}
     if [feature 2 nominal 3] == 3
          Leaf weight = {688.0,489.0}{0.0,0.0}
     if [feature 2 nominal 4] == 4
          Leaf weight = {359.0,846.0}{0.0,0.0}
   if [feature 4 nominal 2] == 2
      Leaf weight = {6164.0,1781.0}{0.0,0.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          Leaf weight = {2038.4138173190388,3346.0}{0.0,0.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,0.0}{0.0,0.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {3674.0,4350.0}{0.0,0.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2770.0689528513653,5.0}{0.0,0.0}

This root: 
 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      
     if [feature 8 numeric 0] < 0.6998122671377988
          Leaf weight = {394.6529553186302,6373.913903662247}{0.0,0.0}
     if [feature 8 numeric 1] >= 0.6998122671377988
          Leaf weight = {348.3470446813698,0.0}{0.0,0.0}
   if [feature 4 nominal 1] == 1
      
     if [feature 2 nominal 0] == 0
          Leaf weight = {496.0,703.0}{0.0,0.0}
     if [feature 2 nominal 1] == 1
          Leaf weight = {158.0,994.0}{0.0,0.0}
     if [feature 2 nominal 2] == 2
          Leaf weight = {97.0,1111.0}{0.0,0.0}
     if [feature 2 nominal 3] == 3
          Leaf weight = {688.0,489.0}{0.0,0.0}
     if [feature 2 nominal 4] == 4
          Leaf weight = {359.0,846.0}{0.0,0.0}
   if [feature 4 nominal 2] == 2
      Leaf weight = {6164.0,1781.0}{0.0,0.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          Leaf weight = {2038.4138173190388,3346.0}{0.0,0.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,0.0}{0.0,0.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {3674.0,4350.0}{0.0,0.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2770.0689528513653,5.0}{0.0,0.0}

That root: 
 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      
     if [feature 8 numeric 0] < 0.6998122671377988
          Leaf weight = {394.6529553186302,6373.913903662247}{210.0,1171.0}
     if [feature 8 numeric 1] >= 0.6998122671377988
          Leaf weight = {348.3470446813698,0.0}{34.0,552.0}
   if [feature 4 nominal 1] == 1
      
     if [feature 2 nominal 0] == 0
          Leaf weight = {496.0,703.0}{185.0,201.0}
     if [feature 2 nominal 1] == 1
          Leaf weight = {158.0,994.0}{54.0,325.0}
     if [feature 2 nominal 2] == 2
          Leaf weight = {97.0,1111.0}{31.0,363.0}
     if [feature 2 nominal 3] == 3
          Leaf weight = {688.0,489.0}{214.0,195.0}
     if [feature 2 nominal 4] == 4
          Leaf weight = {359.0,846.0}{135.0,254.0}
   if [feature 4 nominal 2] == 2
      Leaf weight = {6164.0,1781.0}{1662.0,401.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          Leaf weight = {2038.4138173190388,3346.0}{896.0,1173.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,0.0}{0.0,1.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {3674.0,4350.0}{885.0,1057.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2770.0689528513653,5.0}{0.0,1.0}

LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
HoeffdingTreeModel: addOnWeight = 1381.0
Best suggestion: FeatureSplit, merit=0.18773496165843606, NumericBinaryTest(false) feature[6] = 0.9999712170017597
Distribution From Split: class [0]= {42.85017581452138,1171.0}
Distribution From Split: class [1]= {167.14982418547862,0.0}
HoeffdingTreeModel: {19,13,13,11}
After merge: Hoeffding Tree Model description:

 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      
     if [feature 8 numeric 0] < 0.6998122671377988
          
       if [feature 6 numeric 0] < 0.9999712170017597
              Leaf weight = {42.85017581452138,1171.0}{0.0,0.0}
       if [feature 6 numeric 1] >= 0.9999712170017597
              Leaf weight = {167.14982418547862,0.0}{0.0,0.0}
     if [feature 8 numeric 1] >= 0.6998122671377988
          Leaf weight = {382.3470446813698,552.0}{0.0,0.0}
   if [feature 4 nominal 1] == 1
      
     if [feature 2 nominal 0] == 0
          Leaf weight = {681.0,904.0}{0.0,0.0}
     if [feature 2 nominal 1] == 1
          Leaf weight = {212.0,1319.0}{0.0,0.0}
     if [feature 2 nominal 2] == 2
          Leaf weight = {128.0,1474.0}{0.0,0.0}
     if [feature 2 nominal 3] == 3
          Leaf weight = {902.0,684.0}{0.0,0.0}
     if [feature 2 nominal 4] == 4
          Leaf weight = {494.0,1100.0}{0.0,0.0}
   if [feature 4 nominal 2] == 2
      Leaf weight = {7826.0,2182.0}{0.0,0.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          Leaf weight = {2934.4138173190386,4519.0}{0.0,0.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,1.0}{0.0,0.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {4559.0,5407.0}{0.0,0.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2770.0689528513653,6.0}{0.0,0.0}

Total instances: 41062.41599753274
Accuracy: 0.597, Correct: 35798.000, Total: 60000.000
FileReader RDD count:10000
==============================
Counter: 70000
Chunk: 10000
This root: 
 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      
     if [feature 8 numeric 0] < 0.6998122671377988
          
       if [feature 6 numeric 0] < 0.9999712170017597
              Leaf weight = {42.85017581452138,1171.0}{0.0,0.0}
       if [feature 6 numeric 1] >= 0.9999712170017597
              Leaf weight = {167.14982418547862,0.0}{0.0,0.0}
     if [feature 8 numeric 1] >= 0.6998122671377988
          Leaf weight = {382.3470446813698,552.0}{0.0,0.0}
   if [feature 4 nominal 1] == 1
      
     if [feature 2 nominal 0] == 0
          Leaf weight = {681.0,904.0}{0.0,0.0}
     if [feature 2 nominal 1] == 1
          Leaf weight = {212.0,1319.0}{0.0,0.0}
     if [feature 2 nominal 2] == 2
          Leaf weight = {128.0,1474.0}{0.0,0.0}
     if [feature 2 nominal 3] == 3
          Leaf weight = {902.0,684.0}{0.0,0.0}
     if [feature 2 nominal 4] == 4
          Leaf weight = {494.0,1100.0}{0.0,0.0}
   if [feature 4 nominal 2] == 2
      Leaf weight = {7826.0,2182.0}{0.0,0.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          Leaf weight = {2934.4138173190386,4519.0}{0.0,0.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,1.0}{0.0,0.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {4559.0,5407.0}{0.0,0.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2770.0689528513653,6.0}{0.0,0.0}

That root: 
 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      
     if [feature 8 numeric 0] < 0.6998122671377988
          
       if [feature 6 numeric 0] < 0.9999712170017597
              Leaf weight = {42.85017581452138,1171.0}{102.0,581.0}
       if [feature 6 numeric 1] >= 0.9999712170017597
              Leaf weight = {167.14982418547862,0.0}{0.0,0.0}
     if [feature 8 numeric 1] >= 0.6998122671377988
          Leaf weight = {382.3470446813698,552.0}{25.0,267.0}
   if [feature 4 nominal 1] == 1
      
     if [feature 2 nominal 0] == 0
          Leaf weight = {681.0,904.0}{93.0,119.0}
     if [feature 2 nominal 1] == 1
          Leaf weight = {212.0,1319.0}{16.0,174.0}
     if [feature 2 nominal 2] == 2
          Leaf weight = {128.0,1474.0}{20.0,186.0}
     if [feature 2 nominal 3] == 3
          Leaf weight = {902.0,684.0}{126.0,82.0}
     if [feature 2 nominal 4] == 4
          Leaf weight = {494.0,1100.0}{78.0,121.0}
   if [feature 4 nominal 2] == 2
      Leaf weight = {7826.0,2182.0}{835.0,199.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          Leaf weight = {2934.4138173190386,4519.0}{456.0,549.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,1.0}{0.0,1.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {4559.0,5407.0}{444.0,526.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2770.0689528513653,6.0}{0.0,0.0}

LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
This root: 
 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      
     if [feature 8 numeric 0] < 0.6998122671377988
          
       if [feature 6 numeric 0] < 0.9999712170017597
              Leaf weight = {42.85017581452138,1171.0}{102.0,581.0}
       if [feature 6 numeric 1] >= 0.9999712170017597
              Leaf weight = {167.14982418547862,0.0}{0.0,0.0}
     if [feature 8 numeric 1] >= 0.6998122671377988
          Leaf weight = {382.3470446813698,552.0}{25.0,267.0}
   if [feature 4 nominal 1] == 1
      
     if [feature 2 nominal 0] == 0
          Leaf weight = {681.0,904.0}{93.0,119.0}
     if [feature 2 nominal 1] == 1
          Leaf weight = {212.0,1319.0}{16.0,174.0}
     if [feature 2 nominal 2] == 2
          Leaf weight = {128.0,1474.0}{20.0,186.0}
     if [feature 2 nominal 3] == 3
          Leaf weight = {902.0,684.0}{126.0,82.0}
     if [feature 2 nominal 4] == 4
          Leaf weight = {494.0,1100.0}{78.0,121.0}
   if [feature 4 nominal 2] == 2
      Leaf weight = {7826.0,2182.0}{835.0,199.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          Leaf weight = {2934.4138173190386,4519.0}{456.0,549.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,1.0}{0.0,1.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {4559.0,5407.0}{444.0,526.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2770.0689528513653,6.0}{0.0,0.0}

That root: 
 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      
     if [feature 8 numeric 0] < 0.6998122671377988
          
       if [feature 6 numeric 0] < 0.9999712170017597
              Leaf weight = {42.85017581452138,1171.0}{117.0,604.0}
       if [feature 6 numeric 1] >= 0.9999712170017597
              Leaf weight = {167.14982418547862,0.0}{0.0,0.0}
     if [feature 8 numeric 1] >= 0.6998122671377988
          Leaf weight = {382.3470446813698,552.0}{17.0,297.0}
   if [feature 4 nominal 1] == 1
      
     if [feature 2 nominal 0] == 0
          Leaf weight = {681.0,904.0}{71.0,106.0}
     if [feature 2 nominal 1] == 1
          Leaf weight = {212.0,1319.0}{29.0,204.0}
     if [feature 2 nominal 2] == 2
          Leaf weight = {128.0,1474.0}{13.0,191.0}
     if [feature 2 nominal 3] == 3
          Leaf weight = {902.0,684.0}{128.0,80.0}
     if [feature 2 nominal 4] == 4
          Leaf weight = {494.0,1100.0}{50.0,118.0}
   if [feature 4 nominal 2] == 2
      Leaf weight = {7826.0,2182.0}{780.0,229.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          Leaf weight = {2934.4138173190386,4519.0}{434.0,565.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,1.0}{0.0,3.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {4559.0,5407.0}{468.0,496.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2770.0689528513653,6.0}{0.0,0.0}

LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
tmodel: Hoeffding Tree Model description:

 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      
     if [feature 8 numeric 0] < 0.6998122671377988
          
       if [feature 6 numeric 0] < 0.9999712170017597
              Leaf weight = {42.85017581452138,1171.0}{219.0,1185.0}
       if [feature 6 numeric 1] >= 0.9999712170017597
              Leaf weight = {167.14982418547862,0.0}{0.0,0.0}
     if [feature 8 numeric 1] >= 0.6998122671377988
          Leaf weight = {382.3470446813698,552.0}{42.0,564.0}
   if [feature 4 nominal 1] == 1
      
     if [feature 2 nominal 0] == 0
          Leaf weight = {681.0,904.0}{164.0,225.0}
     if [feature 2 nominal 1] == 1
          Leaf weight = {212.0,1319.0}{45.0,378.0}
     if [feature 2 nominal 2] == 2
          Leaf weight = {128.0,1474.0}{33.0,377.0}
     if [feature 2 nominal 3] == 3
          Leaf weight = {902.0,684.0}{254.0,162.0}
     if [feature 2 nominal 4] == 4
          Leaf weight = {494.0,1100.0}{128.0,239.0}
   if [feature 4 nominal 2] == 2
      Leaf weight = {7826.0,2182.0}{1615.0,428.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          Leaf weight = {2934.4138173190386,4519.0}{890.0,1114.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,1.0}{0.0,4.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {4559.0,5407.0}{912.0,1022.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2770.0689528513653,6.0}{0.0,0.0}

Before merge: Hoeffding Tree Model description:

 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      
     if [feature 8 numeric 0] < 0.6998122671377988
          
       if [feature 6 numeric 0] < 0.9999712170017597
              Leaf weight = {42.85017581452138,1171.0}{0.0,0.0}
       if [feature 6 numeric 1] >= 0.9999712170017597
              Leaf weight = {167.14982418547862,0.0}{0.0,0.0}
     if [feature 8 numeric 1] >= 0.6998122671377988
          Leaf weight = {382.3470446813698,552.0}{0.0,0.0}
   if [feature 4 nominal 1] == 1
      
     if [feature 2 nominal 0] == 0
          Leaf weight = {681.0,904.0}{0.0,0.0}
     if [feature 2 nominal 1] == 1
          Leaf weight = {212.0,1319.0}{0.0,0.0}
     if [feature 2 nominal 2] == 2
          Leaf weight = {128.0,1474.0}{0.0,0.0}
     if [feature 2 nominal 3] == 3
          Leaf weight = {902.0,684.0}{0.0,0.0}
     if [feature 2 nominal 4] == 4
          Leaf weight = {494.0,1100.0}{0.0,0.0}
   if [feature 4 nominal 2] == 2
      Leaf weight = {7826.0,2182.0}{0.0,0.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          Leaf weight = {2934.4138173190386,4519.0}{0.0,0.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,1.0}{0.0,0.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {4559.0,5407.0}{0.0,0.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2770.0689528513653,6.0}{0.0,0.0}

This root: 
 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      
     if [feature 8 numeric 0] < 0.6998122671377988
          
       if [feature 6 numeric 0] < 0.9999712170017597
              Leaf weight = {42.85017581452138,1171.0}{0.0,0.0}
       if [feature 6 numeric 1] >= 0.9999712170017597
              Leaf weight = {167.14982418547862,0.0}{0.0,0.0}
     if [feature 8 numeric 1] >= 0.6998122671377988
          Leaf weight = {382.3470446813698,552.0}{0.0,0.0}
   if [feature 4 nominal 1] == 1
      
     if [feature 2 nominal 0] == 0
          Leaf weight = {681.0,904.0}{0.0,0.0}
     if [feature 2 nominal 1] == 1
          Leaf weight = {212.0,1319.0}{0.0,0.0}
     if [feature 2 nominal 2] == 2
          Leaf weight = {128.0,1474.0}{0.0,0.0}
     if [feature 2 nominal 3] == 3
          Leaf weight = {902.0,684.0}{0.0,0.0}
     if [feature 2 nominal 4] == 4
          Leaf weight = {494.0,1100.0}{0.0,0.0}
   if [feature 4 nominal 2] == 2
      Leaf weight = {7826.0,2182.0}{0.0,0.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          Leaf weight = {2934.4138173190386,4519.0}{0.0,0.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,1.0}{0.0,0.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {4559.0,5407.0}{0.0,0.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2770.0689528513653,6.0}{0.0,0.0}

That root: 
 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      
     if [feature 8 numeric 0] < 0.6998122671377988
          
       if [feature 6 numeric 0] < 0.9999712170017597
              Leaf weight = {42.85017581452138,1171.0}{219.0,1185.0}
       if [feature 6 numeric 1] >= 0.9999712170017597
              Leaf weight = {167.14982418547862,0.0}{0.0,0.0}
     if [feature 8 numeric 1] >= 0.6998122671377988
          Leaf weight = {382.3470446813698,552.0}{42.0,564.0}
   if [feature 4 nominal 1] == 1
      
     if [feature 2 nominal 0] == 0
          Leaf weight = {681.0,904.0}{164.0,225.0}
     if [feature 2 nominal 1] == 1
          Leaf weight = {212.0,1319.0}{45.0,378.0}
     if [feature 2 nominal 2] == 2
          Leaf weight = {128.0,1474.0}{33.0,377.0}
     if [feature 2 nominal 3] == 3
          Leaf weight = {902.0,684.0}{254.0,162.0}
     if [feature 2 nominal 4] == 4
          Leaf weight = {494.0,1100.0}{128.0,239.0}
   if [feature 4 nominal 2] == 2
      Leaf weight = {7826.0,2182.0}{1615.0,428.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          Leaf weight = {2934.4138173190386,4519.0}{890.0,1114.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,1.0}{0.0,4.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {4559.0,5407.0}{912.0,1022.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2770.0689528513653,6.0}{0.0,0.0}

LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
HoeffdingTreeModel: addOnWeight = 10032.0
Best suggestion: FeatureSplit, merit=0.37266093749602036, NumericBinaryTest(false) feature[6] = 0.9999148746584813
Distribution From Split: class [0]= {7860.0,793.0719014793361}
Distribution From Split: class [1]= {0.0,1378.9280985206638}
HoeffdingTreeModel: {21,14,14,11}
After merge: Hoeffding Tree Model description:

 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      
     if [feature 8 numeric 0] < 0.6998122671377988
          
       if [feature 6 numeric 0] < 0.9999712170017597
              Leaf weight = {261.8501758145214,2356.0}{0.0,0.0}
       if [feature 6 numeric 1] >= 0.9999712170017597
              Leaf weight = {167.14982418547862,0.0}{0.0,0.0}
     if [feature 8 numeric 1] >= 0.6998122671377988
          Leaf weight = {424.3470446813698,1116.0}{0.0,0.0}
   if [feature 4 nominal 1] == 1
      
     if [feature 2 nominal 0] == 0
          Leaf weight = {845.0,1129.0}{0.0,0.0}
     if [feature 2 nominal 1] == 1
          Leaf weight = {257.0,1697.0}{0.0,0.0}
     if [feature 2 nominal 2] == 2
          Leaf weight = {161.0,1851.0}{0.0,0.0}
     if [feature 2 nominal 3] == 3
          Leaf weight = {1156.0,846.0}{0.0,0.0}
     if [feature 2 nominal 4] == 4
          Leaf weight = {622.0,1339.0}{0.0,0.0}
   if [feature 4 nominal 2] == 2
      
     if [feature 6 numeric 0] < 0.9999148746584813
          Leaf weight = {7860.0,793.0719014793361}{0.0,0.0}
     if [feature 6 numeric 1] >= 0.9999148746584813
          Leaf weight = {0.0,1378.9280985206638}{0.0,0.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          Leaf weight = {3824.4138173190386,5633.0}{0.0,0.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,5.0}{0.0,0.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {5471.0,6429.0}{0.0,0.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2770.0689528513653,6.0}{0.0,0.0}

Total instances: 49043.41599753274
Accuracy: 0.628, Correct: 43969.000, Total: 70000.000
FileReader RDD count:10000
==============================
Counter: 80000
Chunk: 10000
This root: 
 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      
     if [feature 8 numeric 0] < 0.6998122671377988
          
       if [feature 6 numeric 0] < 0.9999712170017597
              Leaf weight = {261.8501758145214,2356.0}{0.0,0.0}
       if [feature 6 numeric 1] >= 0.9999712170017597
              Leaf weight = {167.14982418547862,0.0}{0.0,0.0}
     if [feature 8 numeric 1] >= 0.6998122671377988
          Leaf weight = {424.3470446813698,1116.0}{0.0,0.0}
   if [feature 4 nominal 1] == 1
      
     if [feature 2 nominal 0] == 0
          Leaf weight = {845.0,1129.0}{0.0,0.0}
     if [feature 2 nominal 1] == 1
          Leaf weight = {257.0,1697.0}{0.0,0.0}
     if [feature 2 nominal 2] == 2
          Leaf weight = {161.0,1851.0}{0.0,0.0}
     if [feature 2 nominal 3] == 3
          Leaf weight = {1156.0,846.0}{0.0,0.0}
     if [feature 2 nominal 4] == 4
          Leaf weight = {622.0,1339.0}{0.0,0.0}
   if [feature 4 nominal 2] == 2
      
     if [feature 6 numeric 0] < 0.9999148746584813
          Leaf weight = {7860.0,793.0719014793361}{0.0,0.0}
     if [feature 6 numeric 1] >= 0.9999148746584813
          Leaf weight = {0.0,1378.9280985206638}{0.0,0.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          Leaf weight = {3824.4138173190386,5633.0}{0.0,0.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,5.0}{0.0,0.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {5471.0,6429.0}{0.0,0.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2770.0689528513653,6.0}{0.0,0.0}

That root: 
 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      
     if [feature 8 numeric 0] < 0.6998122671377988
          
       if [feature 6 numeric 0] < 0.9999712170017597
              Leaf weight = {261.8501758145214,2356.0}{109.0,601.0}
       if [feature 6 numeric 1] >= 0.9999712170017597
              Leaf weight = {167.14982418547862,0.0}{0.0,0.0}
     if [feature 8 numeric 1] >= 0.6998122671377988
          Leaf weight = {424.3470446813698,1116.0}{18.0,290.0}
   if [feature 4 nominal 1] == 1
      
     if [feature 2 nominal 0] == 0
          Leaf weight = {845.0,1129.0}{82.0,134.0}
     if [feature 2 nominal 1] == 1
          Leaf weight = {257.0,1697.0}{26.0,168.0}
     if [feature 2 nominal 2] == 2
          Leaf weight = {161.0,1851.0}{10.0,174.0}
     if [feature 2 nominal 3] == 3
          Leaf weight = {1156.0,846.0}{119.0,87.0}
     if [feature 2 nominal 4] == 4
          Leaf weight = {622.0,1339.0}{70.0,151.0}
   if [feature 4 nominal 2] == 2
      
     if [feature 6 numeric 0] < 0.9999148746584813
          Leaf weight = {7860.0,793.0719014793361}{790.0,225.0}
     if [feature 6 numeric 1] >= 0.9999148746584813
          Leaf weight = {0.0,1378.9280985206638}{0.0,0.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          Leaf weight = {3824.4138173190386,5633.0}{405.0,512.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,5.0}{0.0,1.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {5471.0,6429.0}{468.0,559.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2770.0689528513653,6.0}{0.0,1.0}

LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
This root: 
 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      
     if [feature 8 numeric 0] < 0.6998122671377988
          
       if [feature 6 numeric 0] < 0.9999712170017597
              Leaf weight = {261.8501758145214,2356.0}{109.0,601.0}
       if [feature 6 numeric 1] >= 0.9999712170017597
              Leaf weight = {167.14982418547862,0.0}{0.0,0.0}
     if [feature 8 numeric 1] >= 0.6998122671377988
          Leaf weight = {424.3470446813698,1116.0}{18.0,290.0}
   if [feature 4 nominal 1] == 1
      
     if [feature 2 nominal 0] == 0
          Leaf weight = {845.0,1129.0}{82.0,134.0}
     if [feature 2 nominal 1] == 1
          Leaf weight = {257.0,1697.0}{26.0,168.0}
     if [feature 2 nominal 2] == 2
          Leaf weight = {161.0,1851.0}{10.0,174.0}
     if [feature 2 nominal 3] == 3
          Leaf weight = {1156.0,846.0}{119.0,87.0}
     if [feature 2 nominal 4] == 4
          Leaf weight = {622.0,1339.0}{70.0,151.0}
   if [feature 4 nominal 2] == 2
      
     if [feature 6 numeric 0] < 0.9999148746584813
          Leaf weight = {7860.0,793.0719014793361}{790.0,225.0}
     if [feature 6 numeric 1] >= 0.9999148746584813
          Leaf weight = {0.0,1378.9280985206638}{0.0,0.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          Leaf weight = {3824.4138173190386,5633.0}{405.0,512.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,5.0}{0.0,1.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {5471.0,6429.0}{468.0,559.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2770.0689528513653,6.0}{0.0,1.0}

That root: 
 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      
     if [feature 8 numeric 0] < 0.6998122671377988
          
       if [feature 6 numeric 0] < 0.9999712170017597
              Leaf weight = {261.8501758145214,2356.0}{108.0,576.0}
       if [feature 6 numeric 1] >= 0.9999712170017597
              Leaf weight = {167.14982418547862,0.0}{0.0,0.0}
     if [feature 8 numeric 1] >= 0.6998122671377988
          Leaf weight = {424.3470446813698,1116.0}{25.0,281.0}
   if [feature 4 nominal 1] == 1
      
     if [feature 2 nominal 0] == 0
          Leaf weight = {845.0,1129.0}{90.0,87.0}
     if [feature 2 nominal 1] == 1
          Leaf weight = {257.0,1697.0}{23.0,185.0}
     if [feature 2 nominal 2] == 2
          Leaf weight = {161.0,1851.0}{14.0,189.0}
     if [feature 2 nominal 3] == 3
          Leaf weight = {1156.0,846.0}{114.0,93.0}
     if [feature 2 nominal 4] == 4
          Leaf weight = {622.0,1339.0}{65.0,119.0}
   if [feature 4 nominal 2] == 2
      
     if [feature 6 numeric 0] < 0.9999148746584813
          Leaf weight = {7860.0,793.0719014793361}{796.0,214.0}
     if [feature 6 numeric 1] >= 0.9999148746584813
          Leaf weight = {0.0,1378.9280985206638}{0.0,0.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          Leaf weight = {3824.4138173190386,5633.0}{431.0,576.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,5.0}{0.0,2.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {5471.0,6429.0}{449.0,563.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2770.0689528513653,6.0}{0.0,0.0}

LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
tmodel: Hoeffding Tree Model description:

 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      
     if [feature 8 numeric 0] < 0.6998122671377988
          
       if [feature 6 numeric 0] < 0.9999712170017597
              Leaf weight = {261.8501758145214,2356.0}{217.0,1177.0}
       if [feature 6 numeric 1] >= 0.9999712170017597
              Leaf weight = {167.14982418547862,0.0}{0.0,0.0}
     if [feature 8 numeric 1] >= 0.6998122671377988
          Leaf weight = {424.3470446813698,1116.0}{43.0,571.0}
   if [feature 4 nominal 1] == 1
      
     if [feature 2 nominal 0] == 0
          Leaf weight = {845.0,1129.0}{172.0,221.0}
     if [feature 2 nominal 1] == 1
          Leaf weight = {257.0,1697.0}{49.0,353.0}
     if [feature 2 nominal 2] == 2
          Leaf weight = {161.0,1851.0}{24.0,363.0}
     if [feature 2 nominal 3] == 3
          Leaf weight = {1156.0,846.0}{233.0,180.0}
     if [feature 2 nominal 4] == 4
          Leaf weight = {622.0,1339.0}{135.0,270.0}
   if [feature 4 nominal 2] == 2
      
     if [feature 6 numeric 0] < 0.9999148746584813
          Leaf weight = {7860.0,793.0719014793361}{1586.0,439.0}
     if [feature 6 numeric 1] >= 0.9999148746584813
          Leaf weight = {0.0,1378.9280985206638}{0.0,0.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          Leaf weight = {3824.4138173190386,5633.0}{836.0,1088.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,5.0}{0.0,3.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {5471.0,6429.0}{917.0,1122.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2770.0689528513653,6.0}{0.0,1.0}

Before merge: Hoeffding Tree Model description:

 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      
     if [feature 8 numeric 0] < 0.6998122671377988
          
       if [feature 6 numeric 0] < 0.9999712170017597
              Leaf weight = {261.8501758145214,2356.0}{0.0,0.0}
       if [feature 6 numeric 1] >= 0.9999712170017597
              Leaf weight = {167.14982418547862,0.0}{0.0,0.0}
     if [feature 8 numeric 1] >= 0.6998122671377988
          Leaf weight = {424.3470446813698,1116.0}{0.0,0.0}
   if [feature 4 nominal 1] == 1
      
     if [feature 2 nominal 0] == 0
          Leaf weight = {845.0,1129.0}{0.0,0.0}
     if [feature 2 nominal 1] == 1
          Leaf weight = {257.0,1697.0}{0.0,0.0}
     if [feature 2 nominal 2] == 2
          Leaf weight = {161.0,1851.0}{0.0,0.0}
     if [feature 2 nominal 3] == 3
          Leaf weight = {1156.0,846.0}{0.0,0.0}
     if [feature 2 nominal 4] == 4
          Leaf weight = {622.0,1339.0}{0.0,0.0}
   if [feature 4 nominal 2] == 2
      
     if [feature 6 numeric 0] < 0.9999148746584813
          Leaf weight = {7860.0,793.0719014793361}{0.0,0.0}
     if [feature 6 numeric 1] >= 0.9999148746584813
          Leaf weight = {0.0,1378.9280985206638}{0.0,0.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          Leaf weight = {3824.4138173190386,5633.0}{0.0,0.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,5.0}{0.0,0.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {5471.0,6429.0}{0.0,0.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2770.0689528513653,6.0}{0.0,0.0}

This root: 
 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      
     if [feature 8 numeric 0] < 0.6998122671377988
          
       if [feature 6 numeric 0] < 0.9999712170017597
              Leaf weight = {261.8501758145214,2356.0}{0.0,0.0}
       if [feature 6 numeric 1] >= 0.9999712170017597
              Leaf weight = {167.14982418547862,0.0}{0.0,0.0}
     if [feature 8 numeric 1] >= 0.6998122671377988
          Leaf weight = {424.3470446813698,1116.0}{0.0,0.0}
   if [feature 4 nominal 1] == 1
      
     if [feature 2 nominal 0] == 0
          Leaf weight = {845.0,1129.0}{0.0,0.0}
     if [feature 2 nominal 1] == 1
          Leaf weight = {257.0,1697.0}{0.0,0.0}
     if [feature 2 nominal 2] == 2
          Leaf weight = {161.0,1851.0}{0.0,0.0}
     if [feature 2 nominal 3] == 3
          Leaf weight = {1156.0,846.0}{0.0,0.0}
     if [feature 2 nominal 4] == 4
          Leaf weight = {622.0,1339.0}{0.0,0.0}
   if [feature 4 nominal 2] == 2
      
     if [feature 6 numeric 0] < 0.9999148746584813
          Leaf weight = {7860.0,793.0719014793361}{0.0,0.0}
     if [feature 6 numeric 1] >= 0.9999148746584813
          Leaf weight = {0.0,1378.9280985206638}{0.0,0.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          Leaf weight = {3824.4138173190386,5633.0}{0.0,0.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,5.0}{0.0,0.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {5471.0,6429.0}{0.0,0.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2770.0689528513653,6.0}{0.0,0.0}

That root: 
 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      
     if [feature 8 numeric 0] < 0.6998122671377988
          
       if [feature 6 numeric 0] < 0.9999712170017597
              Leaf weight = {261.8501758145214,2356.0}{217.0,1177.0}
       if [feature 6 numeric 1] >= 0.9999712170017597
              Leaf weight = {167.14982418547862,0.0}{0.0,0.0}
     if [feature 8 numeric 1] >= 0.6998122671377988
          Leaf weight = {424.3470446813698,1116.0}{43.0,571.0}
   if [feature 4 nominal 1] == 1
      
     if [feature 2 nominal 0] == 0
          Leaf weight = {845.0,1129.0}{172.0,221.0}
     if [feature 2 nominal 1] == 1
          Leaf weight = {257.0,1697.0}{49.0,353.0}
     if [feature 2 nominal 2] == 2
          Leaf weight = {161.0,1851.0}{24.0,363.0}
     if [feature 2 nominal 3] == 3
          Leaf weight = {1156.0,846.0}{233.0,180.0}
     if [feature 2 nominal 4] == 4
          Leaf weight = {622.0,1339.0}{135.0,270.0}
   if [feature 4 nominal 2] == 2
      
     if [feature 6 numeric 0] < 0.9999148746584813
          Leaf weight = {7860.0,793.0719014793361}{1586.0,439.0}
     if [feature 6 numeric 1] >= 0.9999148746584813
          Leaf weight = {0.0,1378.9280985206638}{0.0,0.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          Leaf weight = {3824.4138173190386,5633.0}{836.0,1088.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,5.0}{0.0,3.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {5471.0,6429.0}{917.0,1122.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2770.0689528513653,6.0}{0.0,1.0}

LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
HoeffdingTreeModel: addOnWeight = 9980.0
Best suggestion: FeatureSplit, merit=0.08766641408978704, NominalMultiwayTestfeature[2] 5
Distribution From Split: class [0]= {389.0,1618.0}
Distribution From Split: class [1]= {721.0,1261.0}
Distribution From Split: class [2]= {1074.0,919.0}
Distribution From Split: class [3]= {1452.0,530.0}
Distribution From Split: class [4]= {757.0,1259.0}
HoeffdingTreeModel: {26,18,18,11}
After merge: Hoeffding Tree Model description:

 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      
     if [feature 8 numeric 0] < 0.6998122671377988
          
       if [feature 6 numeric 0] < 0.9999712170017597
              Leaf weight = {478.8501758145214,3533.0}{0.0,0.0}
       if [feature 6 numeric 1] >= 0.9999712170017597
              Leaf weight = {167.14982418547862,0.0}{0.0,0.0}
     if [feature 8 numeric 1] >= 0.6998122671377988
          Leaf weight = {467.3470446813698,1687.0}{0.0,0.0}
   if [feature 4 nominal 1] == 1
      
     if [feature 2 nominal 0] == 0
          Leaf weight = {1017.0,1350.0}{0.0,0.0}
     if [feature 2 nominal 1] == 1
          Leaf weight = {306.0,2050.0}{0.0,0.0}
     if [feature 2 nominal 2] == 2
          Leaf weight = {185.0,2214.0}{0.0,0.0}
     if [feature 2 nominal 3] == 3
          Leaf weight = {1389.0,1026.0}{0.0,0.0}
     if [feature 2 nominal 4] == 4
          Leaf weight = {757.0,1609.0}{0.0,0.0}
   if [feature 4 nominal 2] == 2
      
     if [feature 6 numeric 0] < 0.9999148746584813
          Leaf weight = {9446.0,1232.0719014793362}{0.0,0.0}
     if [feature 6 numeric 1] >= 0.9999148746584813
          Leaf weight = {0.0,1378.9280985206638}{0.0,0.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          
       if [feature 2 nominal 0] == 0
              Leaf weight = {389.0,1618.0}{0.0,0.0}
       if [feature 2 nominal 1] == 1
              Leaf weight = {721.0,1261.0}{0.0,0.0}
       if [feature 2 nominal 2] == 2
              Leaf weight = {1074.0,919.0}{0.0,0.0}
       if [feature 2 nominal 3] == 3
              Leaf weight = {1452.0,530.0}{0.0,0.0}
       if [feature 2 nominal 4] == 4
              Leaf weight = {757.0,1259.0}{0.0,0.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,8.0}{0.0,0.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {6388.0,7551.0}{0.0,0.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2770.0689528513653,7.0}{0.0,0.0}

Total instances: 57642.0021802137
Accuracy: 0.647, Correct: 51723.000, Total: 80000.000
FileReader RDD count:10000
==============================
Counter: 90000
Chunk: 10000
This root: 
 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      
     if [feature 8 numeric 0] < 0.6998122671377988
          
       if [feature 6 numeric 0] < 0.9999712170017597
              Leaf weight = {478.8501758145214,3533.0}{0.0,0.0}
       if [feature 6 numeric 1] >= 0.9999712170017597
              Leaf weight = {167.14982418547862,0.0}{0.0,0.0}
     if [feature 8 numeric 1] >= 0.6998122671377988
          Leaf weight = {467.3470446813698,1687.0}{0.0,0.0}
   if [feature 4 nominal 1] == 1
      
     if [feature 2 nominal 0] == 0
          Leaf weight = {1017.0,1350.0}{0.0,0.0}
     if [feature 2 nominal 1] == 1
          Leaf weight = {306.0,2050.0}{0.0,0.0}
     if [feature 2 nominal 2] == 2
          Leaf weight = {185.0,2214.0}{0.0,0.0}
     if [feature 2 nominal 3] == 3
          Leaf weight = {1389.0,1026.0}{0.0,0.0}
     if [feature 2 nominal 4] == 4
          Leaf weight = {757.0,1609.0}{0.0,0.0}
   if [feature 4 nominal 2] == 2
      
     if [feature 6 numeric 0] < 0.9999148746584813
          Leaf weight = {9446.0,1232.0719014793362}{0.0,0.0}
     if [feature 6 numeric 1] >= 0.9999148746584813
          Leaf weight = {0.0,1378.9280985206638}{0.0,0.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          
       if [feature 2 nominal 0] == 0
              Leaf weight = {389.0,1618.0}{0.0,0.0}
       if [feature 2 nominal 1] == 1
              Leaf weight = {721.0,1261.0}{0.0,0.0}
       if [feature 2 nominal 2] == 2
              Leaf weight = {1074.0,919.0}{0.0,0.0}
       if [feature 2 nominal 3] == 3
              Leaf weight = {1452.0,530.0}{0.0,0.0}
       if [feature 2 nominal 4] == 4
              Leaf weight = {757.0,1259.0}{0.0,0.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,8.0}{0.0,0.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {6388.0,7551.0}{0.0,0.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2770.0689528513653,7.0}{0.0,0.0}

That root: 
 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      
     if [feature 8 numeric 0] < 0.6998122671377988
          
       if [feature 6 numeric 0] < 0.9999712170017597
              Leaf weight = {478.8501758145214,3533.0}{107.0,597.0}
       if [feature 6 numeric 1] >= 0.9999712170017597
              Leaf weight = {167.14982418547862,0.0}{0.0,1.0}
     if [feature 8 numeric 1] >= 0.6998122671377988
          Leaf weight = {467.3470446813698,1687.0}{20.0,277.0}
   if [feature 4 nominal 1] == 1
      
     if [feature 2 nominal 0] == 0
          Leaf weight = {1017.0,1350.0}{93.0,116.0}
     if [feature 2 nominal 1] == 1
          Leaf weight = {306.0,2050.0}{20.0,187.0}
     if [feature 2 nominal 2] == 2
          Leaf weight = {185.0,2214.0}{12.0,174.0}
     if [feature 2 nominal 3] == 3
          Leaf weight = {1389.0,1026.0}{112.0,89.0}
     if [feature 2 nominal 4] == 4
          Leaf weight = {757.0,1609.0}{64.0,148.0}
   if [feature 4 nominal 2] == 2
      
     if [feature 6 numeric 0] < 0.9999148746584813
          Leaf weight = {9446.0,1232.0719014793362}{768.0,239.0}
     if [feature 6 numeric 1] >= 0.9999148746584813
          Leaf weight = {0.0,1378.9280985206638}{1.0,0.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          
       if [feature 2 nominal 0] == 0
              Leaf weight = {389.0,1618.0}{32.0,169.0}
       if [feature 2 nominal 1] == 1
              Leaf weight = {721.0,1261.0}{82.0,130.0}
       if [feature 2 nominal 2] == 2
              Leaf weight = {1074.0,919.0}{105.0,80.0}
       if [feature 2 nominal 3] == 3
              Leaf weight = {1452.0,530.0}{137.0,52.0}
       if [feature 2 nominal 4] == 4
              Leaf weight = {757.0,1259.0}{82.0,131.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,8.0}{0.0,0.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {6388.0,7551.0}{435.0,540.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2770.0689528513653,7.0}{0.0,0.0}

LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
This root: 
 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      
     if [feature 8 numeric 0] < 0.6998122671377988
          
       if [feature 6 numeric 0] < 0.9999712170017597
              Leaf weight = {478.8501758145214,3533.0}{107.0,597.0}
       if [feature 6 numeric 1] >= 0.9999712170017597
              Leaf weight = {167.14982418547862,0.0}{0.0,1.0}
     if [feature 8 numeric 1] >= 0.6998122671377988
          Leaf weight = {467.3470446813698,1687.0}{20.0,277.0}
   if [feature 4 nominal 1] == 1
      
     if [feature 2 nominal 0] == 0
          Leaf weight = {1017.0,1350.0}{93.0,116.0}
     if [feature 2 nominal 1] == 1
          Leaf weight = {306.0,2050.0}{20.0,187.0}
     if [feature 2 nominal 2] == 2
          Leaf weight = {185.0,2214.0}{12.0,174.0}
     if [feature 2 nominal 3] == 3
          Leaf weight = {1389.0,1026.0}{112.0,89.0}
     if [feature 2 nominal 4] == 4
          Leaf weight = {757.0,1609.0}{64.0,148.0}
   if [feature 4 nominal 2] == 2
      
     if [feature 6 numeric 0] < 0.9999148746584813
          Leaf weight = {9446.0,1232.0719014793362}{768.0,239.0}
     if [feature 6 numeric 1] >= 0.9999148746584813
          Leaf weight = {0.0,1378.9280985206638}{1.0,0.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          
       if [feature 2 nominal 0] == 0
              Leaf weight = {389.0,1618.0}{32.0,169.0}
       if [feature 2 nominal 1] == 1
              Leaf weight = {721.0,1261.0}{82.0,130.0}
       if [feature 2 nominal 2] == 2
              Leaf weight = {1074.0,919.0}{105.0,80.0}
       if [feature 2 nominal 3] == 3
              Leaf weight = {1452.0,530.0}{137.0,52.0}
       if [feature 2 nominal 4] == 4
              Leaf weight = {757.0,1259.0}{82.0,131.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,8.0}{0.0,0.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {6388.0,7551.0}{435.0,540.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2770.0689528513653,7.0}{0.0,0.0}

That root: 
 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      
     if [feature 8 numeric 0] < 0.6998122671377988
          
       if [feature 6 numeric 0] < 0.9999712170017597
              Leaf weight = {478.8501758145214,3533.0}{107.0,597.0}
       if [feature 6 numeric 1] >= 0.9999712170017597
              Leaf weight = {167.14982418547862,0.0}{0.0,0.0}
     if [feature 8 numeric 1] >= 0.6998122671377988
          Leaf weight = {467.3470446813698,1687.0}{18.0,271.0}
   if [feature 4 nominal 1] == 1
      
     if [feature 2 nominal 0] == 0
          Leaf weight = {1017.0,1350.0}{84.0,95.0}
     if [feature 2 nominal 1] == 1
          Leaf weight = {306.0,2050.0}{28.0,178.0}
     if [feature 2 nominal 2] == 2
          Leaf weight = {185.0,2214.0}{17.0,177.0}
     if [feature 2 nominal 3] == 3
          Leaf weight = {1389.0,1026.0}{125.0,83.0}
     if [feature 2 nominal 4] == 4
          Leaf weight = {757.0,1609.0}{82.0,132.0}
   if [feature 4 nominal 2] == 2
      
     if [feature 6 numeric 0] < 0.9999148746584813
          Leaf weight = {9446.0,1232.0719014793362}{811.0,221.0}
     if [feature 6 numeric 1] >= 0.9999148746584813
          Leaf weight = {0.0,1378.9280985206638}{0.0,0.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          
       if [feature 2 nominal 0] == 0
              Leaf weight = {389.0,1618.0}{28.0,158.0}
       if [feature 2 nominal 1] == 1
              Leaf weight = {721.0,1261.0}{76.0,138.0}
       if [feature 2 nominal 2] == 2
              Leaf weight = {1074.0,919.0}{107.0,79.0}
       if [feature 2 nominal 3] == 3
              Leaf weight = {1452.0,530.0}{154.0,52.0}
       if [feature 2 nominal 4] == 4
              Leaf weight = {757.0,1259.0}{64.0,121.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,8.0}{0.0,0.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {6388.0,7551.0}{433.0,564.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2770.0689528513653,7.0}{0.0,0.0}

LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
tmodel: Hoeffding Tree Model description:

 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      
     if [feature 8 numeric 0] < 0.6998122671377988
          
       if [feature 6 numeric 0] < 0.9999712170017597
              Leaf weight = {478.8501758145214,3533.0}{214.0,1194.0}
       if [feature 6 numeric 1] >= 0.9999712170017597
              Leaf weight = {167.14982418547862,0.0}{0.0,1.0}
     if [feature 8 numeric 1] >= 0.6998122671377988
          Leaf weight = {467.3470446813698,1687.0}{38.0,548.0}
   if [feature 4 nominal 1] == 1
      
     if [feature 2 nominal 0] == 0
          Leaf weight = {1017.0,1350.0}{177.0,211.0}
     if [feature 2 nominal 1] == 1
          Leaf weight = {306.0,2050.0}{48.0,365.0}
     if [feature 2 nominal 2] == 2
          Leaf weight = {185.0,2214.0}{29.0,351.0}
     if [feature 2 nominal 3] == 3
          Leaf weight = {1389.0,1026.0}{237.0,172.0}
     if [feature 2 nominal 4] == 4
          Leaf weight = {757.0,1609.0}{146.0,280.0}
   if [feature 4 nominal 2] == 2
      
     if [feature 6 numeric 0] < 0.9999148746584813
          Leaf weight = {9446.0,1232.0719014793362}{1579.0,460.0}
     if [feature 6 numeric 1] >= 0.9999148746584813
          Leaf weight = {0.0,1378.9280985206638}{1.0,0.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          
       if [feature 2 nominal 0] == 0
              Leaf weight = {389.0,1618.0}{60.0,327.0}
       if [feature 2 nominal 1] == 1
              Leaf weight = {721.0,1261.0}{158.0,268.0}
       if [feature 2 nominal 2] == 2
              Leaf weight = {1074.0,919.0}{212.0,159.0}
       if [feature 2 nominal 3] == 3
              Leaf weight = {1452.0,530.0}{291.0,104.0}
       if [feature 2 nominal 4] == 4
              Leaf weight = {757.0,1259.0}{146.0,252.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,8.0}{0.0,0.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {6388.0,7551.0}{868.0,1104.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2770.0689528513653,7.0}{0.0,0.0}

Before merge: Hoeffding Tree Model description:

 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      
     if [feature 8 numeric 0] < 0.6998122671377988
          
       if [feature 6 numeric 0] < 0.9999712170017597
              Leaf weight = {478.8501758145214,3533.0}{0.0,0.0}
       if [feature 6 numeric 1] >= 0.9999712170017597
              Leaf weight = {167.14982418547862,0.0}{0.0,0.0}
     if [feature 8 numeric 1] >= 0.6998122671377988
          Leaf weight = {467.3470446813698,1687.0}{0.0,0.0}
   if [feature 4 nominal 1] == 1
      
     if [feature 2 nominal 0] == 0
          Leaf weight = {1017.0,1350.0}{0.0,0.0}
     if [feature 2 nominal 1] == 1
          Leaf weight = {306.0,2050.0}{0.0,0.0}
     if [feature 2 nominal 2] == 2
          Leaf weight = {185.0,2214.0}{0.0,0.0}
     if [feature 2 nominal 3] == 3
          Leaf weight = {1389.0,1026.0}{0.0,0.0}
     if [feature 2 nominal 4] == 4
          Leaf weight = {757.0,1609.0}{0.0,0.0}
   if [feature 4 nominal 2] == 2
      
     if [feature 6 numeric 0] < 0.9999148746584813
          Leaf weight = {9446.0,1232.0719014793362}{0.0,0.0}
     if [feature 6 numeric 1] >= 0.9999148746584813
          Leaf weight = {0.0,1378.9280985206638}{0.0,0.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          
       if [feature 2 nominal 0] == 0
              Leaf weight = {389.0,1618.0}{0.0,0.0}
       if [feature 2 nominal 1] == 1
              Leaf weight = {721.0,1261.0}{0.0,0.0}
       if [feature 2 nominal 2] == 2
              Leaf weight = {1074.0,919.0}{0.0,0.0}
       if [feature 2 nominal 3] == 3
              Leaf weight = {1452.0,530.0}{0.0,0.0}
       if [feature 2 nominal 4] == 4
              Leaf weight = {757.0,1259.0}{0.0,0.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,8.0}{0.0,0.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {6388.0,7551.0}{0.0,0.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2770.0689528513653,7.0}{0.0,0.0}

This root: 
 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      
     if [feature 8 numeric 0] < 0.6998122671377988
          
       if [feature 6 numeric 0] < 0.9999712170017597
              Leaf weight = {478.8501758145214,3533.0}{0.0,0.0}
       if [feature 6 numeric 1] >= 0.9999712170017597
              Leaf weight = {167.14982418547862,0.0}{0.0,0.0}
     if [feature 8 numeric 1] >= 0.6998122671377988
          Leaf weight = {467.3470446813698,1687.0}{0.0,0.0}
   if [feature 4 nominal 1] == 1
      
     if [feature 2 nominal 0] == 0
          Leaf weight = {1017.0,1350.0}{0.0,0.0}
     if [feature 2 nominal 1] == 1
          Leaf weight = {306.0,2050.0}{0.0,0.0}
     if [feature 2 nominal 2] == 2
          Leaf weight = {185.0,2214.0}{0.0,0.0}
     if [feature 2 nominal 3] == 3
          Leaf weight = {1389.0,1026.0}{0.0,0.0}
     if [feature 2 nominal 4] == 4
          Leaf weight = {757.0,1609.0}{0.0,0.0}
   if [feature 4 nominal 2] == 2
      
     if [feature 6 numeric 0] < 0.9999148746584813
          Leaf weight = {9446.0,1232.0719014793362}{0.0,0.0}
     if [feature 6 numeric 1] >= 0.9999148746584813
          Leaf weight = {0.0,1378.9280985206638}{0.0,0.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          
       if [feature 2 nominal 0] == 0
              Leaf weight = {389.0,1618.0}{0.0,0.0}
       if [feature 2 nominal 1] == 1
              Leaf weight = {721.0,1261.0}{0.0,0.0}
       if [feature 2 nominal 2] == 2
              Leaf weight = {1074.0,919.0}{0.0,0.0}
       if [feature 2 nominal 3] == 3
              Leaf weight = {1452.0,530.0}{0.0,0.0}
       if [feature 2 nominal 4] == 4
              Leaf weight = {757.0,1259.0}{0.0,0.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,8.0}{0.0,0.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {6388.0,7551.0}{0.0,0.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2770.0689528513653,7.0}{0.0,0.0}

That root: 
 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      
     if [feature 8 numeric 0] < 0.6998122671377988
          
       if [feature 6 numeric 0] < 0.9999712170017597
              Leaf weight = {478.8501758145214,3533.0}{214.0,1194.0}
       if [feature 6 numeric 1] >= 0.9999712170017597
              Leaf weight = {167.14982418547862,0.0}{0.0,1.0}
     if [feature 8 numeric 1] >= 0.6998122671377988
          Leaf weight = {467.3470446813698,1687.0}{38.0,548.0}
   if [feature 4 nominal 1] == 1
      
     if [feature 2 nominal 0] == 0
          Leaf weight = {1017.0,1350.0}{177.0,211.0}
     if [feature 2 nominal 1] == 1
          Leaf weight = {306.0,2050.0}{48.0,365.0}
     if [feature 2 nominal 2] == 2
          Leaf weight = {185.0,2214.0}{29.0,351.0}
     if [feature 2 nominal 3] == 3
          Leaf weight = {1389.0,1026.0}{237.0,172.0}
     if [feature 2 nominal 4] == 4
          Leaf weight = {757.0,1609.0}{146.0,280.0}
   if [feature 4 nominal 2] == 2
      
     if [feature 6 numeric 0] < 0.9999148746584813
          Leaf weight = {9446.0,1232.0719014793362}{1579.0,460.0}
     if [feature 6 numeric 1] >= 0.9999148746584813
          Leaf weight = {0.0,1378.9280985206638}{1.0,0.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          
       if [feature 2 nominal 0] == 0
              Leaf weight = {389.0,1618.0}{60.0,327.0}
       if [feature 2 nominal 1] == 1
              Leaf weight = {721.0,1261.0}{158.0,268.0}
       if [feature 2 nominal 2] == 2
              Leaf weight = {1074.0,919.0}{212.0,159.0}
       if [feature 2 nominal 3] == 3
              Leaf weight = {1452.0,530.0}{291.0,104.0}
       if [feature 2 nominal 4] == 4
              Leaf weight = {757.0,1259.0}{146.0,252.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,8.0}{0.0,0.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {6388.0,7551.0}{868.0,1104.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2770.0689528513653,7.0}{0.0,0.0}

LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
HoeffdingTreeModel: addOnWeight = 4206.0
Best suggestion: FeatureSplit, merit=0.29725253912991445, NumericBinaryTest(false) feature[8] = 0.5598672940218921
Distribution From Split: class [0]= {238.37277751661637,4796.5887039277}
Distribution From Split: class [1]= {411.6272224833836,0.0}
HoeffdingTreeModel: {28,19,19,13}
After merge: Hoeffding Tree Model description:

 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      
     if [feature 8 numeric 0] < 0.6998122671377988
          
       if [feature 6 numeric 0] < 0.9999712170017597
              
         if [feature 8 numeric 0] < 0.5598672940218921
                  Leaf weight = {238.37277751661637,4796.5887039277}{0.0,0.0}
         if [feature 8 numeric 1] >= 0.5598672940218921
                  Leaf weight = {411.6272224833836,0.0}{0.0,0.0}
       if [feature 6 numeric 1] >= 0.9999712170017597
              Leaf weight = {167.14982418547862,1.0}{0.0,0.0}
     if [feature 8 numeric 1] >= 0.6998122671377988
          Leaf weight = {505.3470446813698,2235.0}{0.0,0.0}
   if [feature 4 nominal 1] == 1
      
     if [feature 2 nominal 0] == 0
          Leaf weight = {1194.0,1561.0}{0.0,0.0}
     if [feature 2 nominal 1] == 1
          Leaf weight = {354.0,2415.0}{0.0,0.0}
     if [feature 2 nominal 2] == 2
          Leaf weight = {214.0,2565.0}{0.0,0.0}
     if [feature 2 nominal 3] == 3
          Leaf weight = {1626.0,1198.0}{0.0,0.0}
     if [feature 2 nominal 4] == 4
          Leaf weight = {903.0,1889.0}{0.0,0.0}
   if [feature 4 nominal 2] == 2
      
     if [feature 6 numeric 0] < 0.9999148746584813
          Leaf weight = {11025.0,1692.0719014793362}{0.0,0.0}
     if [feature 6 numeric 1] >= 0.9999148746584813
          Leaf weight = {1.0,1378.9280985206638}{0.0,0.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          
       if [feature 2 nominal 0] == 0
              Leaf weight = {449.0,1945.0}{0.0,0.0}
       if [feature 2 nominal 1] == 1
              Leaf weight = {879.0,1529.0}{0.0,0.0}
       if [feature 2 nominal 2] == 2
              Leaf weight = {1286.0,1078.0}{0.0,0.0}
       if [feature 2 nominal 3] == 3
              Leaf weight = {1743.0,634.0}{0.0,0.0}
       if [feature 2 nominal 4] == 4
              Leaf weight = {903.0,1511.0}{0.0,0.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,8.0}{0.0,0.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {7256.0,8655.0}{0.0,0.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2770.0689528513653,7.0}{0.0,0.0}

Total instances: 67668.74070832688
Accuracy: 0.657, Correct: 59133.000, Total: 90000.000
FileReader RDD count:10000
==============================
Counter: 100000
Chunk: 10000
This root: 
 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      
     if [feature 8 numeric 0] < 0.6998122671377988
          
       if [feature 6 numeric 0] < 0.9999712170017597
              
         if [feature 8 numeric 0] < 0.5598672940218921
                  Leaf weight = {238.37277751661637,4796.5887039277}{0.0,0.0}
         if [feature 8 numeric 1] >= 0.5598672940218921
                  Leaf weight = {411.6272224833836,0.0}{0.0,0.0}
       if [feature 6 numeric 1] >= 0.9999712170017597
              Leaf weight = {167.14982418547862,1.0}{0.0,0.0}
     if [feature 8 numeric 1] >= 0.6998122671377988
          Leaf weight = {505.3470446813698,2235.0}{0.0,0.0}
   if [feature 4 nominal 1] == 1
      
     if [feature 2 nominal 0] == 0
          Leaf weight = {1194.0,1561.0}{0.0,0.0}
     if [feature 2 nominal 1] == 1
          Leaf weight = {354.0,2415.0}{0.0,0.0}
     if [feature 2 nominal 2] == 2
          Leaf weight = {214.0,2565.0}{0.0,0.0}
     if [feature 2 nominal 3] == 3
          Leaf weight = {1626.0,1198.0}{0.0,0.0}
     if [feature 2 nominal 4] == 4
          Leaf weight = {903.0,1889.0}{0.0,0.0}
   if [feature 4 nominal 2] == 2
      
     if [feature 6 numeric 0] < 0.9999148746584813
          Leaf weight = {11025.0,1692.0719014793362}{0.0,0.0}
     if [feature 6 numeric 1] >= 0.9999148746584813
          Leaf weight = {1.0,1378.9280985206638}{0.0,0.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          
       if [feature 2 nominal 0] == 0
              Leaf weight = {449.0,1945.0}{0.0,0.0}
       if [feature 2 nominal 1] == 1
              Leaf weight = {879.0,1529.0}{0.0,0.0}
       if [feature 2 nominal 2] == 2
              Leaf weight = {1286.0,1078.0}{0.0,0.0}
       if [feature 2 nominal 3] == 3
              Leaf weight = {1743.0,634.0}{0.0,0.0}
       if [feature 2 nominal 4] == 4
              Leaf weight = {903.0,1511.0}{0.0,0.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,8.0}{0.0,0.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {7256.0,8655.0}{0.0,0.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2770.0689528513653,7.0}{0.0,0.0}

That root: 
 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      
     if [feature 8 numeric 0] < 0.6998122671377988
          
       if [feature 6 numeric 0] < 0.9999712170017597
              
         if [feature 8 numeric 0] < 0.5598672940218921
                  Leaf weight = {238.37277751661637,4796.5887039277}{87.0,473.0}
         if [feature 8 numeric 1] >= 0.5598672940218921
                  Leaf weight = {411.6272224833836,0.0}{14.0,145.0}
       if [feature 6 numeric 1] >= 0.9999712170017597
              Leaf weight = {167.14982418547862,1.0}{0.0,0.0}
     if [feature 8 numeric 1] >= 0.6998122671377988
          Leaf weight = {505.3470446813698,2235.0}{21.0,274.0}
   if [feature 4 nominal 1] == 1
      
     if [feature 2 nominal 0] == 0
          Leaf weight = {1194.0,1561.0}{66.0,113.0}
     if [feature 2 nominal 1] == 1
          Leaf weight = {354.0,2415.0}{23.0,170.0}
     if [feature 2 nominal 2] == 2
          Leaf weight = {214.0,2565.0}{19.0,170.0}
     if [feature 2 nominal 3] == 3
          Leaf weight = {1626.0,1198.0}{110.0,86.0}
     if [feature 2 nominal 4] == 4
          Leaf weight = {903.0,1889.0}{56.0,142.0}
   if [feature 4 nominal 2] == 2
      
     if [feature 6 numeric 0] < 0.9999148746584813
          Leaf weight = {11025.0,1692.0719014793362}{787.0,245.0}
     if [feature 6 numeric 1] >= 0.9999148746584813
          Leaf weight = {1.0,1378.9280985206638}{0.0,0.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          
       if [feature 2 nominal 0] == 0
              Leaf weight = {449.0,1945.0}{52.0,152.0}
       if [feature 2 nominal 1] == 1
              Leaf weight = {879.0,1529.0}{82.0,126.0}
       if [feature 2 nominal 2] == 2
              Leaf weight = {1286.0,1078.0}{113.0,77.0}
       if [feature 2 nominal 3] == 3
              Leaf weight = {1743.0,634.0}{157.0,47.0}
       if [feature 2 nominal 4] == 4
              Leaf weight = {903.0,1511.0}{65.0,117.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,8.0}{0.0,0.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {7256.0,8655.0}{447.0,564.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2770.0689528513653,7.0}{0.0,0.0}

LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
This root: 
 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      
     if [feature 8 numeric 0] < 0.6998122671377988
          
       if [feature 6 numeric 0] < 0.9999712170017597
              
         if [feature 8 numeric 0] < 0.5598672940218921
                  Leaf weight = {238.37277751661637,4796.5887039277}{87.0,473.0}
         if [feature 8 numeric 1] >= 0.5598672940218921
                  Leaf weight = {411.6272224833836,0.0}{14.0,145.0}
       if [feature 6 numeric 1] >= 0.9999712170017597
              Leaf weight = {167.14982418547862,1.0}{0.0,0.0}
     if [feature 8 numeric 1] >= 0.6998122671377988
          Leaf weight = {505.3470446813698,2235.0}{21.0,274.0}
   if [feature 4 nominal 1] == 1
      
     if [feature 2 nominal 0] == 0
          Leaf weight = {1194.0,1561.0}{66.0,113.0}
     if [feature 2 nominal 1] == 1
          Leaf weight = {354.0,2415.0}{23.0,170.0}
     if [feature 2 nominal 2] == 2
          Leaf weight = {214.0,2565.0}{19.0,170.0}
     if [feature 2 nominal 3] == 3
          Leaf weight = {1626.0,1198.0}{110.0,86.0}
     if [feature 2 nominal 4] == 4
          Leaf weight = {903.0,1889.0}{56.0,142.0}
   if [feature 4 nominal 2] == 2
      
     if [feature 6 numeric 0] < 0.9999148746584813
          Leaf weight = {11025.0,1692.0719014793362}{787.0,245.0}
     if [feature 6 numeric 1] >= 0.9999148746584813
          Leaf weight = {1.0,1378.9280985206638}{0.0,0.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          
       if [feature 2 nominal 0] == 0
              Leaf weight = {449.0,1945.0}{52.0,152.0}
       if [feature 2 nominal 1] == 1
              Leaf weight = {879.0,1529.0}{82.0,126.0}
       if [feature 2 nominal 2] == 2
              Leaf weight = {1286.0,1078.0}{113.0,77.0}
       if [feature 2 nominal 3] == 3
              Leaf weight = {1743.0,634.0}{157.0,47.0}
       if [feature 2 nominal 4] == 4
              Leaf weight = {903.0,1511.0}{65.0,117.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,8.0}{0.0,0.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {7256.0,8655.0}{447.0,564.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2770.0689528513653,7.0}{0.0,0.0}

That root: 
 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      
     if [feature 8 numeric 0] < 0.6998122671377988
          
       if [feature 6 numeric 0] < 0.9999712170017597
              
         if [feature 8 numeric 0] < 0.5598672940218921
                  Leaf weight = {238.37277751661637,4796.5887039277}{104.0,450.0}
         if [feature 8 numeric 1] >= 0.5598672940218921
                  Leaf weight = {411.6272224833836,0.0}{9.0,127.0}
       if [feature 6 numeric 1] >= 0.9999712170017597
              Leaf weight = {167.14982418547862,1.0}{0.0,0.0}
     if [feature 8 numeric 1] >= 0.6998122671377988
          Leaf weight = {505.3470446813698,2235.0}{18.0,282.0}
   if [feature 4 nominal 1] == 1
      
     if [feature 2 nominal 0] == 0
          Leaf weight = {1194.0,1561.0}{86.0,101.0}
     if [feature 2 nominal 1] == 1
          Leaf weight = {354.0,2415.0}{27.0,166.0}
     if [feature 2 nominal 2] == 2
          Leaf weight = {214.0,2565.0}{8.0,190.0}
     if [feature 2 nominal 3] == 3
          Leaf weight = {1626.0,1198.0}{121.0,61.0}
     if [feature 2 nominal 4] == 4
          Leaf weight = {903.0,1889.0}{73.0,132.0}
   if [feature 4 nominal 2] == 2
      
     if [feature 6 numeric 0] < 0.9999148746584813
          Leaf weight = {11025.0,1692.0719014793362}{824.0,230.0}
     if [feature 6 numeric 1] >= 0.9999148746584813
          Leaf weight = {1.0,1378.9280985206638}{1.0,0.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          
       if [feature 2 nominal 0] == 0
              Leaf weight = {449.0,1945.0}{31.0,166.0}
       if [feature 2 nominal 1] == 1
              Leaf weight = {879.0,1529.0}{71.0,120.0}
       if [feature 2 nominal 2] == 2
              Leaf weight = {1286.0,1078.0}{124.0,101.0}
       if [feature 2 nominal 3] == 3
              Leaf weight = {1743.0,634.0}{110.0,50.0}
       if [feature 2 nominal 4] == 4
              Leaf weight = {903.0,1511.0}{70.0,131.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,8.0}{0.0,0.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {7256.0,8655.0}{486.0,530.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2770.0689528513653,7.0}{0.0,0.0}

LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = false
Node merge only
tmodel: Hoeffding Tree Model description:

 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      
     if [feature 8 numeric 0] < 0.6998122671377988
          
       if [feature 6 numeric 0] < 0.9999712170017597
              
         if [feature 8 numeric 0] < 0.5598672940218921
                  Leaf weight = {238.37277751661637,4796.5887039277}{191.0,923.0}
         if [feature 8 numeric 1] >= 0.5598672940218921
                  Leaf weight = {411.6272224833836,0.0}{23.0,272.0}
       if [feature 6 numeric 1] >= 0.9999712170017597
              Leaf weight = {167.14982418547862,1.0}{0.0,0.0}
     if [feature 8 numeric 1] >= 0.6998122671377988
          Leaf weight = {505.3470446813698,2235.0}{39.0,556.0}
   if [feature 4 nominal 1] == 1
      
     if [feature 2 nominal 0] == 0
          Leaf weight = {1194.0,1561.0}{152.0,214.0}
     if [feature 2 nominal 1] == 1
          Leaf weight = {354.0,2415.0}{50.0,336.0}
     if [feature 2 nominal 2] == 2
          Leaf weight = {214.0,2565.0}{27.0,360.0}
     if [feature 2 nominal 3] == 3
          Leaf weight = {1626.0,1198.0}{231.0,147.0}
     if [feature 2 nominal 4] == 4
          Leaf weight = {903.0,1889.0}{129.0,274.0}
   if [feature 4 nominal 2] == 2
      
     if [feature 6 numeric 0] < 0.9999148746584813
          Leaf weight = {11025.0,1692.0719014793362}{1611.0,475.0}
     if [feature 6 numeric 1] >= 0.9999148746584813
          Leaf weight = {1.0,1378.9280985206638}{1.0,0.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          
       if [feature 2 nominal 0] == 0
              Leaf weight = {449.0,1945.0}{83.0,318.0}
       if [feature 2 nominal 1] == 1
              Leaf weight = {879.0,1529.0}{153.0,246.0}
       if [feature 2 nominal 2] == 2
              Leaf weight = {1286.0,1078.0}{237.0,178.0}
       if [feature 2 nominal 3] == 3
              Leaf weight = {1743.0,634.0}{267.0,97.0}
       if [feature 2 nominal 4] == 4
              Leaf weight = {903.0,1511.0}{135.0,248.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,8.0}{0.0,0.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {7256.0,8655.0}{933.0,1094.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2770.0689528513653,7.0}{0.0,0.0}

Before merge: Hoeffding Tree Model description:

 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      
     if [feature 8 numeric 0] < 0.6998122671377988
          
       if [feature 6 numeric 0] < 0.9999712170017597
              
         if [feature 8 numeric 0] < 0.5598672940218921
                  Leaf weight = {238.37277751661637,4796.5887039277}{0.0,0.0}
         if [feature 8 numeric 1] >= 0.5598672940218921
                  Leaf weight = {411.6272224833836,0.0}{0.0,0.0}
       if [feature 6 numeric 1] >= 0.9999712170017597
              Leaf weight = {167.14982418547862,1.0}{0.0,0.0}
     if [feature 8 numeric 1] >= 0.6998122671377988
          Leaf weight = {505.3470446813698,2235.0}{0.0,0.0}
   if [feature 4 nominal 1] == 1
      
     if [feature 2 nominal 0] == 0
          Leaf weight = {1194.0,1561.0}{0.0,0.0}
     if [feature 2 nominal 1] == 1
          Leaf weight = {354.0,2415.0}{0.0,0.0}
     if [feature 2 nominal 2] == 2
          Leaf weight = {214.0,2565.0}{0.0,0.0}
     if [feature 2 nominal 3] == 3
          Leaf weight = {1626.0,1198.0}{0.0,0.0}
     if [feature 2 nominal 4] == 4
          Leaf weight = {903.0,1889.0}{0.0,0.0}
   if [feature 4 nominal 2] == 2
      
     if [feature 6 numeric 0] < 0.9999148746584813
          Leaf weight = {11025.0,1692.0719014793362}{0.0,0.0}
     if [feature 6 numeric 1] >= 0.9999148746584813
          Leaf weight = {1.0,1378.9280985206638}{0.0,0.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          
       if [feature 2 nominal 0] == 0
              Leaf weight = {449.0,1945.0}{0.0,0.0}
       if [feature 2 nominal 1] == 1
              Leaf weight = {879.0,1529.0}{0.0,0.0}
       if [feature 2 nominal 2] == 2
              Leaf weight = {1286.0,1078.0}{0.0,0.0}
       if [feature 2 nominal 3] == 3
              Leaf weight = {1743.0,634.0}{0.0,0.0}
       if [feature 2 nominal 4] == 4
              Leaf weight = {903.0,1511.0}{0.0,0.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,8.0}{0.0,0.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {7256.0,8655.0}{0.0,0.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2770.0689528513653,7.0}{0.0,0.0}

This root: 
 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      
     if [feature 8 numeric 0] < 0.6998122671377988
          
       if [feature 6 numeric 0] < 0.9999712170017597
              
         if [feature 8 numeric 0] < 0.5598672940218921
                  Leaf weight = {238.37277751661637,4796.5887039277}{0.0,0.0}
         if [feature 8 numeric 1] >= 0.5598672940218921
                  Leaf weight = {411.6272224833836,0.0}{0.0,0.0}
       if [feature 6 numeric 1] >= 0.9999712170017597
              Leaf weight = {167.14982418547862,1.0}{0.0,0.0}
     if [feature 8 numeric 1] >= 0.6998122671377988
          Leaf weight = {505.3470446813698,2235.0}{0.0,0.0}
   if [feature 4 nominal 1] == 1
      
     if [feature 2 nominal 0] == 0
          Leaf weight = {1194.0,1561.0}{0.0,0.0}
     if [feature 2 nominal 1] == 1
          Leaf weight = {354.0,2415.0}{0.0,0.0}
     if [feature 2 nominal 2] == 2
          Leaf weight = {214.0,2565.0}{0.0,0.0}
     if [feature 2 nominal 3] == 3
          Leaf weight = {1626.0,1198.0}{0.0,0.0}
     if [feature 2 nominal 4] == 4
          Leaf weight = {903.0,1889.0}{0.0,0.0}
   if [feature 4 nominal 2] == 2
      
     if [feature 6 numeric 0] < 0.9999148746584813
          Leaf weight = {11025.0,1692.0719014793362}{0.0,0.0}
     if [feature 6 numeric 1] >= 0.9999148746584813
          Leaf weight = {1.0,1378.9280985206638}{0.0,0.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          
       if [feature 2 nominal 0] == 0
              Leaf weight = {449.0,1945.0}{0.0,0.0}
       if [feature 2 nominal 1] == 1
              Leaf weight = {879.0,1529.0}{0.0,0.0}
       if [feature 2 nominal 2] == 2
              Leaf weight = {1286.0,1078.0}{0.0,0.0}
       if [feature 2 nominal 3] == 3
              Leaf weight = {1743.0,634.0}{0.0,0.0}
       if [feature 2 nominal 4] == 4
              Leaf weight = {903.0,1511.0}{0.0,0.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,8.0}{0.0,0.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {7256.0,8655.0}{0.0,0.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2770.0689528513653,7.0}{0.0,0.0}

That root: 
 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      
     if [feature 8 numeric 0] < 0.6998122671377988
          
       if [feature 6 numeric 0] < 0.9999712170017597
              
         if [feature 8 numeric 0] < 0.5598672940218921
                  Leaf weight = {238.37277751661637,4796.5887039277}{191.0,923.0}
         if [feature 8 numeric 1] >= 0.5598672940218921
                  Leaf weight = {411.6272224833836,0.0}{23.0,272.0}
       if [feature 6 numeric 1] >= 0.9999712170017597
              Leaf weight = {167.14982418547862,1.0}{0.0,0.0}
     if [feature 8 numeric 1] >= 0.6998122671377988
          Leaf weight = {505.3470446813698,2235.0}{39.0,556.0}
   if [feature 4 nominal 1] == 1
      
     if [feature 2 nominal 0] == 0
          Leaf weight = {1194.0,1561.0}{152.0,214.0}
     if [feature 2 nominal 1] == 1
          Leaf weight = {354.0,2415.0}{50.0,336.0}
     if [feature 2 nominal 2] == 2
          Leaf weight = {214.0,2565.0}{27.0,360.0}
     if [feature 2 nominal 3] == 3
          Leaf weight = {1626.0,1198.0}{231.0,147.0}
     if [feature 2 nominal 4] == 4
          Leaf weight = {903.0,1889.0}{129.0,274.0}
   if [feature 4 nominal 2] == 2
      
     if [feature 6 numeric 0] < 0.9999148746584813
          Leaf weight = {11025.0,1692.0719014793362}{1611.0,475.0}
     if [feature 6 numeric 1] >= 0.9999148746584813
          Leaf weight = {1.0,1378.9280985206638}{1.0,0.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          
       if [feature 2 nominal 0] == 0
              Leaf weight = {449.0,1945.0}{83.0,318.0}
       if [feature 2 nominal 1] == 1
              Leaf weight = {879.0,1529.0}{153.0,246.0}
       if [feature 2 nominal 2] == 2
              Leaf weight = {1286.0,1078.0}{237.0,178.0}
       if [feature 2 nominal 3] == 3
              Leaf weight = {1743.0,634.0}{267.0,97.0}
       if [feature 2 nominal 4] == 4
              Leaf weight = {903.0,1511.0}{135.0,248.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,8.0}{0.0,0.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {7256.0,8655.0}{933.0,1094.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2770.0689528513653,7.0}{0.0,0.0}

LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
LearningNodeNBAdaptive Merge
NodeMerge: trySplit = true
Node merge with Split!
HoeffdingTreeModel: addOnWeight = 6150.0
Best suggestion: FeatureSplit, merit=0.00875964973992982, NumericBinaryTest(false) feature[9] = 0.6999897484377254
Distribution From Split: class [0]= {5768.489959646972,1050.9282431764977}
Distribution From Split: class [1]= {0.0,323.0717568235022}
HoeffdingTreeModel: {30,20,20,13}
After merge: Hoeffding Tree Model description:

 if [feature 5 numeric 0] < 0.9999057216873717
  
   if [feature 4 nominal 0] == 0
      
     if [feature 8 numeric 0] < 0.6998122671377988
          
       if [feature 6 numeric 0] < 0.9999712170017597
              
         if [feature 8 numeric 0] < 0.5598672940218921
                  Leaf weight = {429.37277751661634,5719.5887039277}{0.0,0.0}
         if [feature 8 numeric 1] >= 0.5598672940218921
                  Leaf weight = {434.6272224833836,272.0}{0.0,0.0}
       if [feature 6 numeric 1] >= 0.9999712170017597
              Leaf weight = {167.14982418547862,1.0}{0.0,0.0}
     if [feature 8 numeric 1] >= 0.6998122671377988
          Leaf weight = {544.3470446813699,2791.0}{0.0,0.0}
   if [feature 4 nominal 1] == 1
      
     if [feature 2 nominal 0] == 0
          Leaf weight = {1346.0,1775.0}{0.0,0.0}
     if [feature 2 nominal 1] == 1
          Leaf weight = {404.0,2751.0}{0.0,0.0}
     if [feature 2 nominal 2] == 2
          Leaf weight = {241.0,2925.0}{0.0,0.0}
     if [feature 2 nominal 3] == 3
          Leaf weight = {1857.0,1345.0}{0.0,0.0}
     if [feature 2 nominal 4] == 4
          Leaf weight = {1032.0,2163.0}{0.0,0.0}
   if [feature 4 nominal 2] == 2
      
     if [feature 6 numeric 0] < 0.9999148746584813
          
       if [feature 9 numeric 0] < 0.6999897484377254
              Leaf weight = {5768.489959646972,1050.9282431764977}{0.0,0.0}
       if [feature 9 numeric 1] >= 0.6999897484377254
              Leaf weight = {0.0,323.0717568235022}{0.0,0.0}
     if [feature 6 numeric 1] >= 0.9999148746584813
          Leaf weight = {2.0,1378.9280985206638}{0.0,0.0}
   if [feature 4 nominal 3] == 3
      
     if [feature 5 numeric 0] < 0.9994316035286038
          
       if [feature 2 nominal 0] == 0
              Leaf weight = {532.0,2263.0}{0.0,0.0}
       if [feature 2 nominal 1] == 1
              Leaf weight = {1032.0,1775.0}{0.0,0.0}
       if [feature 2 nominal 2] == 2
              Leaf weight = {1523.0,1256.0}{0.0,0.0}
       if [feature 2 nominal 3] == 3
              Leaf weight = {2010.0,731.0}{0.0,0.0}
       if [feature 2 nominal 4] == 4
              Leaf weight = {1038.0,1759.0}{0.0,0.0}
     if [feature 5 numeric 1] >= 0.9994316035286038
          Leaf weight = {644.5861826809612,8.0}{0.0,0.0}
   if [feature 4 nominal 4] == 4
      Leaf weight = {8189.0,9749.0}{0.0,0.0}
 if [feature 5 numeric 1] >= 0.9999057216873717
  Leaf weight = {2770.0689528513653,7.0}{0.0,0.0}

Total instances: 70008.15876649451
Accuracy: 0.673, Correct: 67304.000, Total: 100000.000
FileReader RDD count:10000
==============================
Counter: 110000
Chunk: 10000
Over 100.000 instances
Running time = 22.395795643
Reading file stopped.

### Description of tidy dataset in *tidydata.txt*
Each row represents 1 Subject and 1 Activity. The raw data included multiple measurement observations for each Subject and Activity, so these were averaged together for the final tidy dataset.

<br/>

### Abbreviations explained
**`Acc`** : signals from accelerometer<br/>
**`Gyro`** : signals from gyroscope, measured in 3-axis X,Y,Z<br/>
**`X/Y/Z`** : signals measured along the respective 3-dimensional axis<br/>
**`Body`** : body component of acceleration signals<br/>
**`Gravity`** : gravity component of acceleration signals<br/>
**`t`** : prefix 't' denotes time domain signals<br/>
**`f`** : prefix 'f' denotes frequency domain signals<br/>
**`tBodyAccJerk`** : linear acceleration of body derieved in time domain, called jerk signals<br/>
**`tBodyGyroJerk`** : angular velocity of body derieved in time domain, called jerk signals<br/>
**`Mag`** : magnitude of the 3-dimensional signals calculated using the Euclidean norm

The set of variables that were estimated from these signals are: 

**`mean`** : Mean value<br/>
**`std`** : Standard deviation<br/>
**`mad`** : Median absolute deviation<br/>
**`max`** : Largest value in array<br/>
**`min`** : Smallest value in array<br/>
**`sma`** : Signal magnitude area<br/>
**`energy`** : Energy measure. Sum of the squares divided by the number of values<br/>
**`iqr`** : Interquartile range<br/>
**`entropy`** : Signal entropy<br/>
**`arCoeff`** : Autorregresion coefficients with Burg order equal to 4<br/>
**`correlation`** : correlation coefficient between two signals<br/>
**`maxInds`** : index of the frequency component with largest magnitude<br/>
**`meanFreq`** : Weighted average of the frequency components to obtain a mean frequency<br/>
**`skewness`** : skewness of the frequency domain signal<br/>
**`kurtosis`** : kurtosis of the frequency domain signal<br/>
**`bandsEnergy`** : Energy of a frequency interval within the 64 bins of the FFT of each window<br/>
**`angle`** : Angle between to vectors

Some additional vectors were obtained by averaging the signals in a signal window sample. These are used on the angle() variable as follows:

angle.tBodyAccMean.gravity.<br/>
angle.tBodyAccJerkMean..gravityMean.<br/>
angle.X.gravityMean.<br/>
angle.Y.gravityMean.<br/>
angle.Z.gravityMean.<br/>
angle.tBodyGyroMean.gravityMean.<br/>
angle.tBodyGyroJerkMean.gravityMean.

This is the way, in which the columns have been named.

<br/>

### Identifiers
A part of tidy data is displayed below as a data-frame
```R
> as.data.frame(Tidy_data[1:12,1:6])
   subject_id           activity tBodyAcc.mean...X tBodyAcc.mean...Y tBodyAcc.mean...Z tBodyAcc.std...X
1           1            WALKING         0.2773308      -0.017383819        -0.1111481      -0.28374026
2           1   WALKING_UPSTAIRS         0.2554617      -0.023953149        -0.0973020      -0.35470803
3           1 WALKING_DOWNSTAIRS         0.2891883      -0.009918505        -0.1075662       0.03003534
4           1            SITTING         0.2612376      -0.001308288        -0.1045442      -0.97722901
5           1           STANDING         0.2789176      -0.016137590        -0.1106018      -0.99575990
6           1             LAYING         0.2215982      -0.040513953        -0.1132036      -0.92805647
7           2            WALKING         0.2764266      -0.018594920        -0.1055004      -0.42364284
8           2   WALKING_UPSTAIRS         0.2471648      -0.021412113        -0.1525139      -0.30437641
9           2 WALKING_DOWNSTAIRS         0.2776153      -0.022661416        -0.1168129       0.04636668
10          2            SITTING         0.2770874      -0.015687994        -0.1092183      -0.98682228
11          2           STANDING         0.2779115      -0.018420827        -0.1059085      -0.98727189
12          2             LAYING         0.2813734      -0.018158740        -0.1072456      -0.97405946
```

The first 2 columns in the dataset serve as Identifiers:

* **`[1] subject_id`**: The ID for the subject participating in the experiment. It ranges from 1 to 30
* **`[2] activity`**: A factor variable, it represents the type of activity performed by the subject for which the measurements were taken. They are numbered from 1 to 6 respectively and are:
    * (1) WALKING
    * (2) WALKING_UPSTAIRS
    * (3) WALKING_DOWNSTAIRS
    * (4) SITTING
    * (5) STANDING
    * (6) LAYING

<br/>

### Measurements
The remaining columns are measurements taken by the smartphone for each Subject and Activity. They have been named based on what they measure or how they are measured.
> e.g. **angle.tBodyAccJerkMean..gravityMean.** : is the data variable (or column), containing the angle between mean of linear acceleration of body and mean of gravity component of acceleration. see **_Abbreviations explained_** for more details.

* **`[3] tBodyAcc-mean()-X`**                     
* **`[4] tBodyAcc-mean()-Y`**                     
* **`[5] tBodyAcc-mean()-Z`**                     
* **`[6] tBodyAcc-std()-X`**                      
* **`[7] tBodyAcc-std()-Y`**                      
* **`[8] tBodyAcc-std()-Z`**                      
* **`[9] tBodyAcc-mad()-X`**                      
* **`[10] tBodyAcc-mad()-Y`**                     
* **`[11] tBodyAcc-mad()-Z`**                     
* **`[12] tBodyAcc-max()-X`**                     
* **`[13] tBodyAcc-max()-Y`**                     
* **`[14] tBodyAcc-max()-Z`**                     
* **`[15] tBodyAcc-min()-X`**                     
* **`[16] tBodyAcc-min()-Y`**                     
* **`[17] tBodyAcc-min()-Z`**                     
* **`[18] tBodyAcc-sma()`**                       
* **`[19] tBodyAcc-energy()-X`**                  
* **`[20] tBodyAcc-energy()-Y`**                  
* **`[21] tBodyAcc-energy()-Z`**                  
* **`[22] tBodyAcc-iqr()-X`**                     
* **`[23] tBodyAcc-iqr()-Y`**                     
* **`[24] tBodyAcc-iqr()-Z`**                     
* **`[25] tBodyAcc-entropy()-X`**                 
* **`[26] tBodyAcc-entropy()-Y`**                 
* **`[27] tBodyAcc-entropy()-Z`**                 
* **`[28] tBodyAcc-arCoeff()-X,1`**               
* **`[29] tBodyAcc-arCoeff()-X,2`**               
* **`[30] tBodyAcc-arCoeff()-X,3`**               
* **`[31] tBodyAcc-arCoeff()-X,4`**               
* **`[32] tBodyAcc-arCoeff()-Y,1`**               
* **`[33] tBodyAcc-arCoeff()-Y,2`**               
* **`[34] tBodyAcc-arCoeff()-Y,3`**               
* **`[35] tBodyAcc-arCoeff()-Y,4`**               
* **`[36] tBodyAcc-arCoeff()-Z,1`**               
* **`[37] tBodyAcc-arCoeff()-Z,2`**               
* **`[38] tBodyAcc-arCoeff()-Z,3`**               
* **`[39] tBodyAcc-arCoeff()-Z,4`**               
* **`[40] tBodyAcc-correlation()-X,Y`**           
* **`[41] tBodyAcc-correlation()-X,Z`**           
* **`[42] tBodyAcc-correlation()-Y,Z`**           
* **`[43] tGravityAcc-mean()-X`**                 
* **`[44] tGravityAcc-mean()-Y`**                 
* **`[45] tGravityAcc-mean()-Z`**                 
* **`[46] tGravityAcc-std()-X`**                  
* **`[47] tGravityAcc-std()-Y`**                  
* **`[48] tGravityAcc-std()-Z`**                  
* **`[49] tGravityAcc-mad()-X`**                  
* **`[50] tGravityAcc-mad()-Y`**                  
* **`[51] tGravityAcc-mad()-Z`**                  
* **`[52] tGravityAcc-max()-X`**                  
* **`[53] tGravityAcc-max()-Y`**                  
* **`[54] tGravityAcc-max()-Z`**                  
* **`[55] tGravityAcc-min()-X`**                  
* **`[56] tGravityAcc-min()-Y`**                  
* **`[57] tGravityAcc-min()-Z`**                  
* **`[58] tGravityAcc-sma()`**                    
* **`[59] tGravityAcc-energy()-X`**               
* **`[60] tGravityAcc-energy()-Y`**               
* **`[61] tGravityAcc-energy()-Z`**               
* **`[62] tGravityAcc-iqr()-X`**                  
* **`[63] tGravityAcc-iqr()-Y`**                  
* **`[64] tGravityAcc-iqr()-Z`**                  
* **`[65] tGravityAcc-entropy()-X`**              
* **`[66] tGravityAcc-entropy()-Y`**              
* **`[67] tGravityAcc-entropy()-Z`**              
* **`[68] tGravityAcc-arCoeff()-X,1`**            
* **`[69] tGravityAcc-arCoeff()-X,2`**            
* **`[70] tGravityAcc-arCoeff()-X,3`**            
* **`[71] tGravityAcc-arCoeff()-X,4`**            
* **`[72] tGravityAcc-arCoeff()-Y,1`**            
* **`[73] tGravityAcc-arCoeff()-Y,2`**            
* **`[74] tGravityAcc-arCoeff()-Y,3`**            
* **`[75] tGravityAcc-arCoeff()-Y,4`**            
* **`[76] tGravityAcc-arCoeff()-Z,1`**            
* **`[77] tGravityAcc-arCoeff()-Z,2`**            
* **`[78] tGravityAcc-arCoeff()-Z,3`**            
* **`[79] tGravityAcc-arCoeff()-Z,4`**            
* **`[80] tGravityAcc-correlation()-X,Y`**        
* **`[81] tGravityAcc-correlation()-X,Z`**        
* **`[82] tGravityAcc-correlation()-Y,Z`**        
* **`[83] tBodyAccJerk-mean()-X`**                
* **`[84] tBodyAccJerk-mean()-Y`**                
* **`[85] tBodyAccJerk-mean()-Z`**                
* **`[86] tBodyAccJerk-std()-X`**                 
* **`[87] tBodyAccJerk-std()-Y`**                 
* **`[88] tBodyAccJerk-std()-Z`**                 
* **`[89] tBodyAccJerk-mad()-X`**                 
* **`[90] tBodyAccJerk-mad()-Y`**                 
* **`[91] tBodyAccJerk-mad()-Z`**                 
* **`[92] tBodyAccJerk-max()-X`**                 
* **`[93] tBodyAccJerk-max()-Y`**                 
* **`[94] tBodyAccJerk-max()-Z`**                 
* **`[95] tBodyAccJerk-min()-X`**                 
* **`[96] tBodyAccJerk-min()-Y`**                 
* **`[97] tBodyAccJerk-min()-Z`**                 
* **`[98] tBodyAccJerk-sma()`**                   
* **`[99] tBodyAccJerk-energy()-X`**              
* **`[100] tBodyAccJerk-energy()-Y`**             
* **`[101] tBodyAccJerk-energy()-Z`**             
* **`[102] tBodyAccJerk-iqr()-X`**                
[101] * **`[103] tBodyAccJerk-iqr()-Y`**                
[102] * **`[104] tBodyAccJerk-iqr()-Z`**                
[103] * **`[105] tBodyAccJerk-entropy()-X`**            
[104] * **`[106] tBodyAccJerk-entropy()-Y`**            
[105] * **`[107] tBodyAccJerk-entropy()-Z`**            
[106] * **`[108] tBodyAccJerk-arCoeff()-X,1`**          
[107] * **`[109] tBodyAccJerk-arCoeff()-X,2`**          
[108] * **`[110] tBodyAccJerk-arCoeff()-X,3`**          
[109] * **`[111] tBodyAccJerk-arCoeff()-X,4`**          
[110] * **`[112] tBodyAccJerk-arCoeff()-Y,1`**          
[111] * **`[113] tBodyAccJerk-arCoeff()-Y,2`**          
[112] * **`[114] tBodyAccJerk-arCoeff()-Y,3`**          
[113] * **`[115] tBodyAccJerk-arCoeff()-Y,4`**          
[114] * **`[116] tBodyAccJerk-arCoeff()-Z,1`**          
[115] * **`[117] tBodyAccJerk-arCoeff()-Z,2`**          
[116] * **`[118] tBodyAccJerk-arCoeff()-Z,3`**          
[117] * **`[119] tBodyAccJerk-arCoeff()-Z,4`**          
[118] * **`[120] tBodyAccJerk-correlation()-X,Y`**      
[119] * **`[121] tBodyAccJerk-correlation()-X,Z`**      
[120] * **`[122] tBodyAccJerk-correlation()-Y,Z`**      
[121] * **`[123] tBodyGyro-mean()-X`**                  
[122] * **`[124] tBodyGyro-mean()-Y`**                  
[123] * **`[125] tBodyGyro-mean()-Z`**                  
[124] * **`[126] tBodyGyro-std()-X`**                   
[125] * **`[127] tBodyGyro-std()-Y`**                   
[126] * **`[128] tBodyGyro-std()-Z`**                   
[127] * **`[129] tBodyGyro-mad()-X`**                   
[128] * **`[130] tBodyGyro-mad()-Y`**                   
[129] * **`[131] tBodyGyro-mad()-Z`**                   
[130] * **`[132] tBodyGyro-max()-X`**                   
[131] * **`[133] tBodyGyro-max()-Y`**                   
[132] * **`[134] tBodyGyro-max()-Z`**                   
[133] * **`[135] tBodyGyro-min()-X`**                   
[134] * **`[136] tBodyGyro-min()-Y`**                   
[135] * **`[137] tBodyGyro-min()-Z`**                   
[136] * **`[138] tBodyGyro-sma()`**                     
[137] * **`[139] tBodyGyro-energy()-X`**                
[138] * **`[140] tBodyGyro-energy()-Y`**                
[139] * **`[141] tBodyGyro-energy()-Z`**                
[140] * **`[142] tBodyGyro-iqr()-X`**                   
[141] * **`[143] tBodyGyro-iqr()-Y`**                   
[142] * **`[144] tBodyGyro-iqr()-Z`**                   
[143] * **`[145] tBodyGyro-entropy()-X`**               
[144] * **`[146] tBodyGyro-entropy()-Y`**               
[145] * **`[147] tBodyGyro-entropy()-Z`**               
[146] * **`[148] tBodyGyro-arCoeff()-X,1`**             
[147] * **`[149] tBodyGyro-arCoeff()-X,2`**             
[148] * **`[150] tBodyGyro-arCoeff()-X,3`**             
[149] * **`[151] tBodyGyro-arCoeff()-X,4`**             
[150] * **`[152] tBodyGyro-arCoeff()-Y,1`**             
[151] * **`[153] tBodyGyro-arCoeff()-Y,2`**             
[152] * **`[154] tBodyGyro-arCoeff()-Y,3`**             
[153] * **`[155] tBodyGyro-arCoeff()-Y,4`**             
[154] * **`[156] tBodyGyro-arCoeff()-Z,1`**             
[155] * **`[157] tBodyGyro-arCoeff()-Z,2`**             
[156] * **`[158] tBodyGyro-arCoeff()-Z,3`**             
[157] * **`[159] tBodyGyro-arCoeff()-Z,4`**             
[158] * **`[160] tBodyGyro-correlation()-X,Y`**         
[159] * **`[161] tBodyGyro-correlation()-X,Z`**         
[160] * **`[162] tBodyGyro-correlation()-Y,Z`**         
[161] * **`[163] tBodyGyroJerk-mean()-X`**              
[162] * **`[164] tBodyGyroJerk-mean()-Y`**              
[163] * **`[165] tBodyGyroJerk-mean()-Z`**              
[164] * **`[166] tBodyGyroJerk-std()-X`**               
[165] * **`[167] tBodyGyroJerk-std()-Y`**               
[166] * **`[168] tBodyGyroJerk-std()-Z`**               
[167] * **`[169] tBodyGyroJerk-mad()-X`**               
[168] * **`[170] tBodyGyroJerk-mad()-Y`**               
[169] * **`[171] tBodyGyroJerk-mad()-Z`**               
[170] * **`[172] tBodyGyroJerk-max()-X`**               
[171] * **`[173] tBodyGyroJerk-max()-Y`**               
[172] * **`[174] tBodyGyroJerk-max()-Z`**               
[173] * **`[175] tBodyGyroJerk-min()-X`**               
[174] * **`[176] tBodyGyroJerk-min()-Y`**               
[175] * **`[177] tBodyGyroJerk-min()-Z`**               
[176] * **`[178] tBodyGyroJerk-sma()`**                 
[177] * **`[179] tBodyGyroJerk-energy()-X`**            
[178] * **`[180] tBodyGyroJerk-energy()-Y`**            
[179] * **`[181] tBodyGyroJerk-energy()-Z`**            
[180] * **`[182] tBodyGyroJerk-iqr()-X`**               
[181] * **`[183] tBodyGyroJerk-iqr()-Y`**               
[182] * **`[184] tBodyGyroJerk-iqr()-Z`**               
[183] * **`[185] tBodyGyroJerk-entropy()-X`**           
[184] * **`[186] tBodyGyroJerk-entropy()-Y`**           
[185] * **`[187] tBodyGyroJerk-entropy()-Z`**           
[186] * **`[188] tBodyGyroJerk-arCoeff()-X,1`**         
[187] * **`[189] tBodyGyroJerk-arCoeff()-X,2`**         
[188] * **`[190] tBodyGyroJerk-arCoeff()-X,3`**         
[189] * **`[191] tBodyGyroJerk-arCoeff()-X,4`**         
[190] * **`[192] tBodyGyroJerk-arCoeff()-Y,1`**         
[191] * **`[193] tBodyGyroJerk-arCoeff()-Y,2`**         
[192] * **`[194] tBodyGyroJerk-arCoeff()-Y,3`**         
[193] * **`[195] tBodyGyroJerk-arCoeff()-Y,4`**         
[194] * **`[196] tBodyGyroJerk-arCoeff()-Z,1`**         
[195] * **`[197] tBodyGyroJerk-arCoeff()-Z,2`**         
[196] * **`[198] tBodyGyroJerk-arCoeff()-Z,3`**         
[197] * **`[199] tBodyGyroJerk-arCoeff()-Z,4`**         
[198] * **`[200] tBodyGyroJerk-correlation()-X,Y`**     
[199] * **`[201] tBodyGyroJerk-correlation()-X,Z`**     
[200] * **`[202] tBodyGyroJerk-correlation()-Y,Z`**     
[201] * **`[203] tBodyAccMag-mean()`**                  
[202] * **`[204] tBodyAccMag-std()`**                   
[203] * **`[205] tBodyAccMag-mad()`**                   
[204] * **`[206] tBodyAccMag-max()`**                   
[205] * **`[207] tBodyAccMag-min()`**                   
[206] * **`[208] tBodyAccMag-sma()`**                   
[207] * **`[209] tBodyAccMag-energy()`**                
[208] * **`[210] tBodyAccMag-iqr()`**                   
[209] * **`[211] tBodyAccMag-entropy()`**               
[210] * **`[212] tBodyAccMag-arCoeff()1`**              
[211] * **`[213] tBodyAccMag-arCoeff()2`**              
[212] * **`[214] tBodyAccMag-arCoeff()3`**              
[213] * **`[215] tBodyAccMag-arCoeff()4`**              
[214] * **`[216] tGravityAccMag-mean()`**               
[215] * **`[217] tGravityAccMag-std()`**                
[216] * **`[218] tGravityAccMag-mad()`**                
[217] * **`[219] tGravityAccMag-max()`**                
[218] * **`[220] tGravityAccMag-min()`**                
[219] * **`[221] tGravityAccMag-sma()`**                
[220] * **`[222] tGravityAccMag-energy()`**             
[221] * **`[223] tGravityAccMag-iqr()`**                
[222] * **`[224] tGravityAccMag-entropy()`**            
[223] * **`[225] tGravityAccMag-arCoeff()1`**           
[224] * **`[226] tGravityAccMag-arCoeff()2`**           
[225] * **`[227] tGravityAccMag-arCoeff()3`**           
[226] * **`[228] tGravityAccMag-arCoeff()4`**           
[227] * **`[229] tBodyAccJerkMag-mean()`**              
[228] * **`[230] tBodyAccJerkMag-std()`**               
[229] * **`[231] tBodyAccJerkMag-mad()`**               
[230] * **`[232] tBodyAccJerkMag-max()`**               
[231] * **`[233] tBodyAccJerkMag-min()`**               
[232] * **`[234] tBodyAccJerkMag-sma()`**               
[233] * **`[235] tBodyAccJerkMag-energy()`**            
[234] * **`[236] tBodyAccJerkMag-iqr()`**               
[235] * **`[237] tBodyAccJerkMag-entropy()`**           
[236] * **`[238] tBodyAccJerkMag-arCoeff()1`**          
[237] * **`[239] tBodyAccJerkMag-arCoeff()2`**          
[238] * **`[240] tBodyAccJerkMag-arCoeff()3`**          
[239] * **`[241] tBodyAccJerkMag-arCoeff()4`**          
[240] * **`[242] tBodyGyroMag-mean()`**                 
[241] * **`[243] tBodyGyroMag-std()`**                  
[242] * **`[244] tBodyGyroMag-mad()`**                  
[243] * **`[245] tBodyGyroMag-max()`**                  
[244] * **`[246] tBodyGyroMag-min()`**                  
[245] * **`[247] tBodyGyroMag-sma()`**                  
[246] * **`[248] tBodyGyroMag-energy()`**               
[247] * **`[249] tBodyGyroMag-iqr()`**                  
[248] * **`[250] tBodyGyroMag-entropy()`**              
[249] * **`[251] tBodyGyroMag-arCoeff()1`**             
[250] * **`[252] tBodyGyroMag-arCoeff()2`**             
[251] * **`[253] tBodyGyroMag-arCoeff()3`**             
[252] * **`[254] tBodyGyroMag-arCoeff()4`**             
[253] * **`[255] tBodyGyroJerkMag-mean()`**             
[254] * **`[256] tBodyGyroJerkMag-std()`**              
[255] * **`[257] tBodyGyroJerkMag-mad()`**              
[256] * **`[258] tBodyGyroJerkMag-max()`**              
[257] * **`[259] tBodyGyroJerkMag-min()`**              
[258] * **`[260] tBodyGyroJerkMag-sma()`**              
[259] * **`[261] tBodyGyroJerkMag-energy()`**           
[260] * **`[262] tBodyGyroJerkMag-iqr()`**              
[261] * **`[263] tBodyGyroJerkMag-entropy()`**          
[262] * **`[264] tBodyGyroJerkMag-arCoeff()1`**         
[263] * **`[265] tBodyGyroJerkMag-arCoeff()2`**         
[264] * **`[266] tBodyGyroJerkMag-arCoeff()3`**         
[265] * **`[267] tBodyGyroJerkMag-arCoeff()4`**         
[266] * **`[268] fBodyAcc-mean()-X`**                   
[267] * **`[269] fBodyAcc-mean()-Y`**                   
[268] * **`[270] fBodyAcc-mean()-Z`**                   
[269] * **`[271] fBodyAcc-std()-X`**                    
[270] * **`[272] fBodyAcc-std()-Y`**                    
[271] * **`[273] fBodyAcc-std()-Z`**                    
[272] * **`[274] fBodyAcc-mad()-X`**                    
[273] * **`[275] fBodyAcc-mad()-Y`**                    
[274] * **`[276] fBodyAcc-mad()-Z`**                    
[275] * **`[277] fBodyAcc-max()-X`**                    
[276] * **`[278] fBodyAcc-max()-Y`**                    
[277] * **`[279] fBodyAcc-max()-Z`**                    
[278] * **`[280] fBodyAcc-min()-X`**                    
[279] * **`[281] fBodyAcc-min()-Y`**                    
[280] * **`[282] fBodyAcc-min()-Z`**                    
[281] * **`[283] fBodyAcc-sma()`**                      
[282] * **`[284] fBodyAcc-energy()-X`**                 
[283] * **`[285] fBodyAcc-energy()-Y`**                 
[284] * **`[286] fBodyAcc-energy()-Z`**                 
[285] * **`[287] fBodyAcc-iqr()-X`**                    
[286] * **`[288] fBodyAcc-iqr()-Y`**                    
[287] * **`[289] fBodyAcc-iqr()-Z`**                    
[288] * **`[290] fBodyAcc-entropy()-X`**                
[289] * **`[291] fBodyAcc-entropy()-Y`**                
[290] * **`[292] fBodyAcc-entropy()-Z`**                
[291] * **`[293] fBodyAcc-maxInds-X`**                  
[292] * **`[294] fBodyAcc-maxInds-Y`**                  
[293] * **`[295] fBodyAcc-maxInds-Z`**                  
[294] * **`[296] fBodyAcc-meanFreq()-X`**               
[295] * **`[297] fBodyAcc-meanFreq()-Y`**               
[296] * **`[298] fBodyAcc-meanFreq()-Z`**               
[297] * **`[299] fBodyAcc-skewness()-X`**               
[298] * **`[300] fBodyAcc-kurtosis()-X`**               
[299] * **`[301] fBodyAcc-skewness()-Y`**               
[300] * **`[302] fBodyAcc-kurtosis()-Y`**               
[301] * **`[303] fBodyAcc-skewness()-Z`**               
[302] * **`[304] fBodyAcc-kurtosis()-Z`**               
[303] * **`[305] fBodyAcc-bandsEnergy()-1,8`**          
[304] * **`[306] fBodyAcc-bandsEnergy()-9,16`**         
[305] * **`[307] fBodyAcc-bandsEnergy()-17,24`**        
[306] * **`[308] fBodyAcc-bandsEnergy()-25,32`**        
[307] * **`[309] fBodyAcc-bandsEnergy()-33,40`**        
[308] * **`[310] fBodyAcc-bandsEnergy()-41,48`**        
[309] * **`[311] fBodyAcc-bandsEnergy()-49,56`**        
[310] * **`[312] fBodyAcc-bandsEnergy()-57,64`**        
[311] * **`[313] fBodyAcc-bandsEnergy()-1,16`**         
[312] * **`[314] fBodyAcc-bandsEnergy()-17,32`**        
[313] * **`[315] fBodyAcc-bandsEnergy()-33,48`**        
[314] * **`[316] fBodyAcc-bandsEnergy()-49,64`**        
[315] * **`[317] fBodyAcc-bandsEnergy()-1,24`**         
[316] * **`[318] fBodyAcc-bandsEnergy()-25,48`**        
[317] * **`[305] fBodyAcc-bandsEnergy()-1,8`**          
[318] * **`[306] fBodyAcc-bandsEnergy()-9,16`**         
[319] * **`[307] fBodyAcc-bandsEnergy()-17,24`**        
[320] * **`[308] fBodyAcc-bandsEnergy()-25,32`**        
[321] * **`[309] fBodyAcc-bandsEnergy()-33,40`**        
[322] * **`[310] fBodyAcc-bandsEnergy()-41,48`**        
[323] * **`[311] fBodyAcc-bandsEnergy()-49,56`**        
[324] * **`[312] fBodyAcc-bandsEnergy()-57,64`**        
[325] * **`[313] fBodyAcc-bandsEnergy()-1,16`**         
[326] * **`[314] fBodyAcc-bandsEnergy()-17,32`**        
[327] * **`[315] fBodyAcc-bandsEnergy()-33,48`**        
[328] * **`[316] fBodyAcc-bandsEnergy()-49,64`**        
[329] * **`[317] fBodyAcc-bandsEnergy()-1,24`**         
[330] * **`[318] fBodyAcc-bandsEnergy()-25,48`**        
[331] * **`[305] fBodyAcc-bandsEnergy()-1,8`**          
[332] * **`[306] fBodyAcc-bandsEnergy()-9,16`**         
[333] * **`[307] fBodyAcc-bandsEnergy()-17,24`**        
[334] * **`[308] fBodyAcc-bandsEnergy()-25,32`**        
[335] * **`[309] fBodyAcc-bandsEnergy()-33,40`**        
[336] * **`[310] fBodyAcc-bandsEnergy()-41,48`**        
[337] * **`[311] fBodyAcc-bandsEnergy()-49,56`**        
[338] * **`[312] fBodyAcc-bandsEnergy()-57,64`**        
[339] * **`[313] fBodyAcc-bandsEnergy()-1,16`**         
[340] * **`[314] fBodyAcc-bandsEnergy()-17,32`**        
[341] * **`[315] fBodyAcc-bandsEnergy()-33,48`**        
[342] * **`[316] fBodyAcc-bandsEnergy()-49,64`**        
[343] * **`[317] fBodyAcc-bandsEnergy()-1,24`**         
[344] * **`[318] fBodyAcc-bandsEnergy()-25,48`**        
[345] * **`[347] fBodyAccJerk-mean()-X`**               
[346] * **`[348] fBodyAccJerk-mean()-Y`**               
[347] * **`[349] fBodyAccJerk-mean()-Z`**               
[348] * **`[350] fBodyAccJerk-std()-X`**                
[349] * **`[351] fBodyAccJerk-std()-Y`**                
[350] * **`[352] fBodyAccJerk-std()-Z`**                
[351] * **`[353] fBodyAccJerk-mad()-X`**                
[352] * **`[354] fBodyAccJerk-mad()-Y`**                
[353] * **`[355] fBodyAccJerk-mad()-Z`**                
[354] * **`[356] fBodyAccJerk-max()-X`**                
[355] * **`[357] fBodyAccJerk-max()-Y`**                
[356] * **`[358] fBodyAccJerk-max()-Z`**                
[357] * **`[359] fBodyAccJerk-min()-X`**                
[358] * **`[360] fBodyAccJerk-min()-Y`**                
[359] * **`[361] fBodyAccJerk-min()-Z`**                
[360] * **`[362] fBodyAccJerk-sma()`**                  
[361] * **`[363] fBodyAccJerk-energy()-X`**             
[362] * **`[364] fBodyAccJerk-energy()-Y`**             
[363] * **`[365] fBodyAccJerk-energy()-Z`**             
[364] * **`[366] fBodyAccJerk-iqr()-X`**                
[365] * **`[367] fBodyAccJerk-iqr()-Y`**                
[366] * **`[368] fBodyAccJerk-iqr()-Z`**                
[367] * **`[369] fBodyAccJerk-entropy()-X`**            
[368] * **`[370] fBodyAccJerk-entropy()-Y`**            
[369] * **`[371] fBodyAccJerk-entropy()-Z`**            
[370] * **`[372] fBodyAccJerk-maxInds-X`**              
[371] * **`[373] fBodyAccJerk-maxInds-Y`**              
[372] * **`[374] fBodyAccJerk-maxInds-Z`**              
[373] * **`[375] fBodyAccJerk-meanFreq()-X`**           
[374] * **`[376] fBodyAccJerk-meanFreq()-Y`**           
[375] * **`[377] fBodyAccJerk-meanFreq()-Z`**           
[376] * **`[378] fBodyAccJerk-skewness()-X`**           
[377] * **`[379] fBodyAccJerk-kurtosis()-X`**           
[378] * **`[380] fBodyAccJerk-skewness()-Y`**           
[379] * **`[381] fBodyAccJerk-kurtosis()-Y`**           
[380] * **`[382] fBodyAccJerk-skewness()-Z`**           
[381] * **`[383] fBodyAccJerk-kurtosis()-Z`**           
[382] * **`[384] fBodyAccJerk-bandsEnergy()-1,8`**      
[383] * **`[385] fBodyAccJerk-bandsEnergy()-9,16`**     
[384] * **`[386] fBodyAccJerk-bandsEnergy()-17,24`**    
[385] * **`[387] fBodyAccJerk-bandsEnergy()-25,32`**    
[386] * **`[388] fBodyAccJerk-bandsEnergy()-33,40`**    
[387] * **`[389] fBodyAccJerk-bandsEnergy()-41,48`**    
[388] * **`[390] fBodyAccJerk-bandsEnergy()-49,56`**    
[389] * **`[391] fBodyAccJerk-bandsEnergy()-57,64`**    
[390] * **`[392] fBodyAccJerk-bandsEnergy()-1,16`**     
[391] * **`[393] fBodyAccJerk-bandsEnergy()-17,32`**    
[392] * **`[394] fBodyAccJerk-bandsEnergy()-33,48`**    
[393] * **`[395] fBodyAccJerk-bandsEnergy()-49,64`**    
[394] * **`[396] fBodyAccJerk-bandsEnergy()-1,24`**     
[395] * **`[397] fBodyAccJerk-bandsEnergy()-25,48`**    
[396] * **`[384] fBodyAccJerk-bandsEnergy()-1,8`**      
[397] * **`[385] fBodyAccJerk-bandsEnergy()-9,16`**     
[398] * **`[386] fBodyAccJerk-bandsEnergy()-17,24`**    
[399] * **`[387] fBodyAccJerk-bandsEnergy()-25,32`**    
[400] * **`[388] fBodyAccJerk-bandsEnergy()-33,40`**    
[401] * **`[389] fBodyAccJerk-bandsEnergy()-41,48`**    
[402] * **`[390] fBodyAccJerk-bandsEnergy()-49,56`**    
[403] * **`[391] fBodyAccJerk-bandsEnergy()-57,64`**    
[404] * **`[392] fBodyAccJerk-bandsEnergy()-1,16`**     
[405] * **`[393] fBodyAccJerk-bandsEnergy()-17,32`**    
[406] * **`[394] fBodyAccJerk-bandsEnergy()-33,48`**    
[407] * **`[395] fBodyAccJerk-bandsEnergy()-49,64`**    
[408] * **`[396] fBodyAccJerk-bandsEnergy()-1,24`**     
[409] * **`[397] fBodyAccJerk-bandsEnergy()-25,48`**    
[410] * **`[384] fBodyAccJerk-bandsEnergy()-1,8`**      
[411] * **`[385] fBodyAccJerk-bandsEnergy()-9,16`**     
[412] * **`[386] fBodyAccJerk-bandsEnergy()-17,24`**    
[413] * **`[387] fBodyAccJerk-bandsEnergy()-25,32`**    
[414] * **`[388] fBodyAccJerk-bandsEnergy()-33,40`**    
[415] * **`[389] fBodyAccJerk-bandsEnergy()-41,48`**    
[416] * **`[390] fBodyAccJerk-bandsEnergy()-49,56`**    
[417] * **`[391] fBodyAccJerk-bandsEnergy()-57,64`**    
[418] * **`[392] fBodyAccJerk-bandsEnergy()-1,16`**     
[419] * **`[393] fBodyAccJerk-bandsEnergy()-17,32`**    
[420] * **`[394] fBodyAccJerk-bandsEnergy()-33,48`**    
[421] * **`[395] fBodyAccJerk-bandsEnergy()-49,64`**    
[422] * **`[396] fBodyAccJerk-bandsEnergy()-1,24`**     
[423] * **`[397] fBodyAccJerk-bandsEnergy()-25,48`**    
[424] * **`[426] fBodyGyro-mean()-X`**                  
[425] * **`[427] fBodyGyro-mean()-Y`**                  
[426] * **`[428] fBodyGyro-mean()-Z`**                  
[427] * **`[429] fBodyGyro-std()-X`**                   
[428] * **`[430] fBodyGyro-std()-Y`**                   
[429] * **`[431] fBodyGyro-std()-Z`**                   
[430] * **`[432] fBodyGyro-mad()-X`**                   
[431] * **`[433] fBodyGyro-mad()-Y`**                   
[432] * **`[434] fBodyGyro-mad()-Z`**                   
[433] * **`[435] fBodyGyro-max()-X`**                   
[434] * **`[436] fBodyGyro-max()-Y`**                   
[435] * **`[437] fBodyGyro-max()-Z`**                   
[436] * **`[438] fBodyGyro-min()-X`**                   
[437] * **`[439] fBodyGyro-min()-Y`**                   
[438] * **`[440] fBodyGyro-min()-Z`**                   
[439] * **`[441] fBodyGyro-sma()`**                     
[440] * **`[442] fBodyGyro-energy()-X`**                
[441] * **`[443] fBodyGyro-energy()-Y`**                
[442] * **`[444] fBodyGyro-energy()-Z`**                
[443] * **`[445] fBodyGyro-iqr()-X`**                   
[444] * **`[446] fBodyGyro-iqr()-Y`**                   
[445] * **`[447] fBodyGyro-iqr()-Z`**                   
[446] * **`[448] fBodyGyro-entropy()-X`**               
[447] * **`[449] fBodyGyro-entropy()-Y`**               
[448] * **`[450] fBodyGyro-entropy()-Z`**               
[449] * **`[451] fBodyGyro-maxInds-X`**                 
[450] * **`[452] fBodyGyro-maxInds-Y`**                 
[451] * **`[453] fBodyGyro-maxInds-Z`**                 
[452] * **`[454] fBodyGyro-meanFreq()-X`**              
[453] * **`[455] fBodyGyro-meanFreq()-Y`**              
[454] * **`[456] fBodyGyro-meanFreq()-Z`**              
[455] * **`[457] fBodyGyro-skewness()-X`**              
[456] * **`[458] fBodyGyro-kurtosis()-X`**              
[457] * **`[459] fBodyGyro-skewness()-Y`**              
[458] * **`[460] fBodyGyro-kurtosis()-Y`**              
[459] * **`[461] fBodyGyro-skewness()-Z`**              
[460] * **`[462] fBodyGyro-kurtosis()-Z`**              
[461] * **`[463] fBodyGyro-bandsEnergy()-1,8`**         
[462] * **`[464] fBodyGyro-bandsEnergy()-9,16`**        
[463] * **`[465] fBodyGyro-bandsEnergy()-17,24`**       
[464] * **`[466] fBodyGyro-bandsEnergy()-25,32`**       
[465] * **`[467] fBodyGyro-bandsEnergy()-33,40`**       
[466] * **`[468] fBodyGyro-bandsEnergy()-41,48`**       
[467] * **`[469] fBodyGyro-bandsEnergy()-49,56`**       
[468] * **`[470] fBodyGyro-bandsEnergy()-57,64`**       
[469] * **`[471] fBodyGyro-bandsEnergy()-1,16`**        
[470] * **`[472] fBodyGyro-bandsEnergy()-17,32`**       
[471] * **`[473] fBodyGyro-bandsEnergy()-33,48`**       
[472] * **`[474] fBodyGyro-bandsEnergy()-49,64`**       
[473] * **`[475] fBodyGyro-bandsEnergy()-1,24`**        
[474] * **`[476] fBodyGyro-bandsEnergy()-25,48`**       
[475] * **`[463] fBodyGyro-bandsEnergy()-1,8`**         
[476] * **`[464] fBodyGyro-bandsEnergy()-9,16`**        
[477] * **`[465] fBodyGyro-bandsEnergy()-17,24`**       
[478] * **`[466] fBodyGyro-bandsEnergy()-25,32`**       
[479] * **`[467] fBodyGyro-bandsEnergy()-33,40`**       
[480] * **`[468] fBodyGyro-bandsEnergy()-41,48`**       
[481] * **`[469] fBodyGyro-bandsEnergy()-49,56`**       
[482] * **`[470] fBodyGyro-bandsEnergy()-57,64`**       
[483] * **`[471] fBodyGyro-bandsEnergy()-1,16`**        
[484] * **`[472] fBodyGyro-bandsEnergy()-17,32`**       
[485] * **`[473] fBodyGyro-bandsEnergy()-33,48`**       
[486] * **`[474] fBodyGyro-bandsEnergy()-49,64`**       
[487] * **`[475] fBodyGyro-bandsEnergy()-1,24`**        
[488] * **`[476] fBodyGyro-bandsEnergy()-25,48`**       
[489] * **`[463] fBodyGyro-bandsEnergy()-1,8`**         
[490] * **`[464] fBodyGyro-bandsEnergy()-9,16`**        
[491] * **`[465] fBodyGyro-bandsEnergy()-17,24`**       
[492] * **`[466] fBodyGyro-bandsEnergy()-25,32`**       
[493] * **`[467] fBodyGyro-bandsEnergy()-33,40`**       
[494] * **`[468] fBodyGyro-bandsEnergy()-41,48`**       
[495] * **`[469] fBodyGyro-bandsEnergy()-49,56`**       
[496] * **`[470] fBodyGyro-bandsEnergy()-57,64`**       
[497] * **`[471] fBodyGyro-bandsEnergy()-1,16`**        
[498] * **`[472] fBodyGyro-bandsEnergy()-17,32`**       
[499] * **`[473] fBodyGyro-bandsEnergy()-33,48`**       
[500] * **`[474] fBodyGyro-bandsEnergy()-49,64`**       
[501] * **`[475] fBodyGyro-bandsEnergy()-1,24`**        
[502] * **`[476] fBodyGyro-bandsEnergy()-25,48`**       
[503] * **`[505] fBodyAccMag-mean()`**                  
[504] * **`[506] fBodyAccMag-std()`**                   
[505] * **`[507] fBodyAccMag-mad()`**                   
[506] * **`[508] fBodyAccMag-max()`**                   
[507] * **`[509] fBodyAccMag-min()`**                   
[508] * **`[510] fBodyAccMag-sma()`**                   
[509] * **`[511] fBodyAccMag-energy()`**                
[510] * **`[512] fBodyAccMag-iqr()`**                   
[511] * **`[513] fBodyAccMag-entropy()`**               
[512] * **`[514] fBodyAccMag-maxInds`**                 
[513] * **`[515] fBodyAccMag-meanFreq()`**              
[514] * **`[516] fBodyAccMag-skewness()`**              
[515] * **`[517] fBodyAccMag-kurtosis()`**              
[516] * **`[518] fBodyBodyAccJerkMag-mean()`**          
[517] * **`[519] fBodyBodyAccJerkMag-std()`**           
[518] * **`[520] fBodyBodyAccJerkMag-mad()`**           
[519] * **`[521] fBodyBodyAccJerkMag-max()`**           
[520] * **`[522] fBodyBodyAccJerkMag-min()`**           
[521] * **`[523] fBodyBodyAccJerkMag-sma()`**           
[522] * **`[524] fBodyBodyAccJerkMag-energy()`**        
[523] * **`[525] fBodyBodyAccJerkMag-iqr()`**           
[524] * **`[526] fBodyBodyAccJerkMag-entropy()`**       
[525] * **`[527] fBodyBodyAccJerkMag-maxInds`**         
[526] * **`[528] fBodyBodyAccJerkMag-meanFreq()`**      
[527] * **`[529] fBodyBodyAccJerkMag-skewness()`**      
[528] * **`[530] fBodyBodyAccJerkMag-kurtosis()`**      
[529] * **`[531] fBodyBodyGyroMag-mean()`**             
[530] * **`[532] fBodyBodyGyroMag-std()`**              
[531] * **`[533] fBodyBodyGyroMag-mad()`**              
[532] * **`[534] fBodyBodyGyroMag-max()`**              
[533] * **`[535] fBodyBodyGyroMag-min()`**              
[534] * **`[536] fBodyBodyGyroMag-sma()`**              
[535] * **`[537] fBodyBodyGyroMag-energy()`**           
[536] * **`[538] fBodyBodyGyroMag-iqr()`**              
[537] * **`[539] fBodyBodyGyroMag-entropy()`**          
[538] * **`[540] fBodyBodyGyroMag-maxInds`**            
[539] * **`[541] fBodyBodyGyroMag-meanFreq()`**         
[540] * **`[542] fBodyBodyGyroMag-skewness()`**         
[541] * **`[543] fBodyBodyGyroMag-kurtosis()`**         
[542] * **`[544] fBodyBodyGyroJerkMag-mean()`**         
[543] * **`[545] fBodyBodyGyroJerkMag-std()`**          
[544] * **`[546] fBodyBodyGyroJerkMag-mad()`**          
[545] * **`[547] fBodyBodyGyroJerkMag-max()`**          
[546] * **`[548] fBodyBodyGyroJerkMag-min()`**          
[547] * **`[549] fBodyBodyGyroJerkMag-sma()`**          
[548] * **`[550] fBodyBodyGyroJerkMag-energy()`**       
[549] * **`[551] fBodyBodyGyroJerkMag-iqr()`**          
[550] * **`[552] fBodyBodyGyroJerkMag-entropy()`**      
[551] * **`[553] fBodyBodyGyroJerkMag-maxInds`**        
[552] * **`[554] fBodyBodyGyroJerkMag-meanFreq()`**     
[553] * **`[555] fBodyBodyGyroJerkMag-skewness()`**     
[554] * **`[556] fBodyBodyGyroJerkMag-kurtosis()`**     
[555] * **`[557] angle(tBodyAccMean,gravity)`**         
[556] * **`[558] angle(tBodyAccJerkMean),gravityMean)`**
[557] * **`[559] angle(tBodyGyroMean,gravityMean)`**    
[558] * **`[560] angle(tBodyGyroJerkMean,gravityMean)`**
[559] * **`[561] angle(X,gravityMean)`**                
[560] * **`[562] angle(Y,gravityMean)`**                
[561] * **`[563] angle(Z,gravityMean)`**                
477 Levels: * **`[10] tBodyAcc-mad()-Y`** ...


* **`[3] tBodyAcc.mean...X`**                    
* **`[4] tBodyAcc.mean...Y`**                   
* **`[5] tBodyAcc.mean...Z`**                   
* **`[6] tBodyAcc.std...X`**                      
* **`[7] tBodyAcc.std...Y`**                      
* **`[8] tBodyAcc.std...Z`**                      
* **`[9] tBodyAcc.mad...X`**                      
* **`[10] tBodyAcc.mad...Y`**                     
* **`tBodyAcc.mad...Z`**                     
* **`tBodyAcc.max...X`**                    
* **`tBodyAcc.max...Y`**                    
* **`tBodyAcc.max...Z`**                    
* **`tBodyAcc.min...X`**                     
* **`tBodyAcc.min...Y`**                    
* **`tBodyAcc.min...Z`**                     
* **`tBodyAcc.sma..`**                       
* **`tBodyAcc.energy...X`**                 
* **`tBodyAcc.energy...Y`**                  
* **`tBodyAcc.energy...Z`**                 
* **`tBodyAcc.iqr...X`**                    
* **`tBodyAcc.iqr...Y`**                    
* **`tBodyAcc.iqr...Z`**                    
* **`tBodyAcc.entropy...X`**                
* **`tBodyAcc.entropy...Y`**                
* **`tBodyAcc.entropy...Z`**                
* **`tBodyAcc.arCoeff...X.1`**              
* **`tBodyAcc.arCoeff...X.2`**              
* **`tBodyAcc.arCoeff...X.3`**              
* **`tBodyAcc.arCoeff...X.4`**              
* **`tBodyAcc.arCoeff...Y.1`**              
* **`tBodyAcc.arCoeff...Y.2`**              
* **`tBodyAcc.arCoeff...Y.3`**              
* **`tBodyAcc.arCoeff...Y.4`**              
* **`tBodyAcc.arCoeff...Z.1`**              
* **`tBodyAcc.arCoeff...Z.2`**              
* **`tBodyAcc.arCoeff...Z.3`**              
* **`tBodyAcc.arCoeff...Z.4`**              
* **`tBodyAcc.correlation...X.Y`**          
* **`tBodyAcc.correlation...X.Z`**          
* **`tBodyAcc.correlation...Y.Z`**          
* **`tGravityAcc.mean...X`**                
* **`tGravityAcc.mean...Y`**                
* **`tGravityAcc.mean...Z`**                
* **`tGravityAcc.std...X`**                 
* **`tGravityAcc.std...Y`**                 
* **`tGravityAcc.std...Z`**                 
* **`tGravityAcc.mad...X`**                 
* **`tGravityAcc.mad...Y`**                 
* **`tGravityAcc.mad...Z`**                 
* **`tGravityAcc.max...X`**                 
* **`tGravityAcc.max...Y`**                 
* **`tGravityAcc.max...Z`**                 
* **`tGravityAcc.min...X`**                 
* **`tGravityAcc.min...Y`**                 
* **`tGravityAcc.min...Z`**                 
* **`tGravityAcc.sma..`**                   
* **`tGravityAcc.energy...X`**              
* **`tGravityAcc.energy...Y`**              
* **`tGravityAcc.energy...Z`**              
* **`tGravityAcc.iqr...X`**                 
* **`tGravityAcc.iqr...Y`**                 
* **`tGravityAcc.iqr...Z`**                 
* **`tGravityAcc.entropy...X`**             
* **`tGravityAcc.entropy...Y`**             
* **`tGravityAcc.entropy...Z`**             
* **`tGravityAcc.arCoeff...X.1`**           
* **`tGravityAcc.arCoeff...X.2`**           
* **`tGravityAcc.arCoeff...X.3`**           
* **`tGravityAcc.arCoeff...X.4`**           
* **`tGravityAcc.arCoeff...Y.1`**           
* **`tGravityAcc.arCoeff...Y.2`**           
* **`tGravityAcc.arCoeff...Y.3`**           
* **`tGravityAcc.arCoeff...Y.4`**           
* **`tGravityAcc.arCoeff...Z.1`**           
* **`tGravityAcc.arCoeff...Z.2`**           
* **`tGravityAcc.arCoeff...Z.3`**           
* **`tGravityAcc.arCoeff...Z.4`**           
* **`tGravityAcc.correlation...X.Y`**       
* **`tGravityAcc.correlation...X.Z`**       
* **`tGravityAcc.correlation...Y.Z`**       
* **`tBodyAccJerk.mean...X`**               
* **`tBodyAccJerk.mean...Y`**               
* **`tBodyAccJerk.mean...Z`**               
* **`tBodyAccJerk.std...X`**                
* **`tBodyAccJerk.std...Y`**                
* **`tBodyAccJerk.std...Z`**                
* **`tBodyAccJerk.mad...X`**                
* **`tBodyAccJerk.mad...Y`**                
* **`tBodyAccJerk.mad...Z`**                
* **`tBodyAccJerk.max...X`**                
* **`tBodyAccJerk.max...Y`**                
* **`tBodyAccJerk.max...Z`**                
* **`tBodyAccJerk.min...X`**                
* **`tBodyAccJerk.min...Y`**                
* **`tBodyAccJerk.min...Z`**                
* **`tBodyAccJerk.sma..`**                  
* **`tBodyAccJerk.energy...X`**             
* **`tBodyAccJerk.energy...Y`**             
* **`tBodyAccJerk.energy...Z`**             
* **`tBodyAccJerk.iqr...X`**                
* **`tBodyAccJerk.iqr...Y`**                
* **`tBodyAccJerk.iqr...Z`**                
* **`tBodyAccJerk.entropy...X`**            
* **`tBodyAccJerk.entropy...Y`**            
* **`tBodyAccJerk.entropy...Z`**            
* **`tBodyAccJerk.arCoeff...X.1`**          
* **`tBodyAccJerk.arCoeff...X.2`**          
* **`tBodyAccJerk.arCoeff...X.3`**          
* **`tBodyAccJerk.arCoeff...X.4`**          
* **`tBodyAccJerk.arCoeff...Y.1`**          
* **`tBodyAccJerk.arCoeff...Y.2`**          
* **`tBodyAccJerk.arCoeff...Y.3`**          
* **`tBodyAccJerk.arCoeff...Y.4`**          
* **`tBodyAccJerk.arCoeff...Z.1`**          
* **`tBodyAccJerk.arCoeff...Z.2`**          
* **`tBodyAccJerk.arCoeff...Z.3`**          
* **`tBodyAccJerk.arCoeff...Z.4`**          
* **`tBodyAccJerk.correlation...X.Y`**      
* **`tBodyAccJerk.correlation...X.Z`**      
* **`tBodyAccJerk.correlation...Y.Z`**      
* **`tBodyGyro.mean...X`**                  
* **`tBodyGyro.mean...Y`**                  
* **`tBodyGyro.mean...Z`**                  
* **`tBodyGyro.std...X`**                   
* **`tBodyGyro.std...Y`**                   
* **`tBodyGyro.std...Z`**                   
* **`tBodyGyro.mad...X`**                   
* **`tBodyGyro.mad...Y`**                   
* **`[131] tBodyGyro.mad...Z`**                   
* **`[132] tBodyGyro.max...X`**                   
* **`[133] tBodyGyro.max...Y`**                   
* **`[134] tBodyGyro.max...Z`**                   
* **`[135] tBodyGyro.min...X`**                   
* **`[136] tBodyGyro.min...Y`**                   
* **`[137] tBodyGyro.min...Z`**                   
* **`[138] tBodyGyro.sma..`**                     
* **`[139] tBodyGyro.energy...X`**                
* **`[140] tBodyGyro.energy...Y`**                
* **`[141] tBodyGyro.energy...Z`**                
* **`[142] tBodyGyro.iqr...X`**                   
* **`[143] tBodyGyro.iqr...Y`**                   
* **`[144] tBodyGyro.iqr...Z`**                   
* **`[145] tBodyGyro.entropy...X`**               
* **`[146] tBodyGyro.entropy...Y`**               
* **`[147] tBodyGyro.entropy...Z`**               
* **`[148] tBodyGyro.arCoeff...X.1`**             
* **`[149] tBodyGyro.arCoeff...X.2`**             
* **`[150] tBodyGyro.arCoeff...X.3`**             
* **`[151] tBodyGyro.arCoeff...X.4`**             
* **`[152] tBodyGyro.arCoeff...Y.1`**             
* **`[153] tBodyGyro.arCoeff...Y.2`**             
* **`[154] tBodyGyro.arCoeff...Y.3`**             
* **`[155] tBodyGyro.arCoeff...Y.4`**             
* **`[156] tBodyGyro.arCoeff...Z.1`**             
* **`[157] tBodyGyro.arCoeff...Z.2`**             
* **`[158] tBodyGyro.arCoeff...Z.3`**             
* **`[159] tBodyGyro.arCoeff...Z.4`**             
* **`[160] tBodyGyro.correlation...X.Y`**         
* **`[161] tBodyGyro.correlation...X.Z`**         
* **`[162] tBodyGyro.correlation...Y.Z`**         
* **`[163] tBodyGyroJerk.mean...X`**              
* **`[164] tBodyGyroJerk.mean...Y`**              
* **`[165] tBodyGyroJerk.mean...Z`**              
* **`[166] tBodyGyroJerk.std...X`**               
* **`[167] tBodyGyroJerk.std...Y`**               
* **`[168] tBodyGyroJerk.std...Z`**               
* **`[169] tBodyGyroJerk.mad...X`**               
* **`[170] tBodyGyroJerk.mad...Y`**               
* **`[171] tBodyGyroJerk.mad...Z`**               
* **`[172] tBodyGyroJerk.max...X`**               
* **`[173] tBodyGyroJerk.max...Y`**               
* **`[174] tBodyGyroJerk.max...Z`**               
* **`[175] tBodyGyroJerk.min...X`**               
* **`[176] tBodyGyroJerk.min...Y`**               
* **`[177] tBodyGyroJerk.min...Z`**               
* **`[178] tBodyGyroJerk.sma..`**                 
* **`[179] tBodyGyroJerk.energy...X`**            
* **`[180] tBodyGyroJerk.energy...Y`**            
* **`[181] tBodyGyroJerk.energy...Z`**            
* **`[182] tBodyGyroJerk.iqr...X`**               
* **`[183] tBodyGyroJerk.iqr...Y`**               
* **`[184] tBodyGyroJerk.iqr...Z`**               
* **`[185] tBodyGyroJerk.entropy...X`**           
* **`[186] tBodyGyroJerk.entropy...Y`**           
* **`[187] tBodyGyroJerk.entropy...Z`**           
* **`[188] tBodyGyroJerk.arCoeff...X.1`**         
* **`[189] tBodyGyroJerk.arCoeff...X.2`**         
* **`[190] tBodyGyroJerk.arCoeff...X.3`**         
* **`[191] tBodyGyroJerk.arCoeff...X.4`**         
* **`[192] tBodyGyroJerk.arCoeff...Y.1`**         
* **`[193] tBodyGyroJerk.arCoeff...Y.2`**         
* **`[194] tBodyGyroJerk.arCoeff...Y.3`**         
* **`[195] tBodyGyroJerk.arCoeff...Y.4`**         
* **`[196] tBodyGyroJerk.arCoeff...Z.1`**         
* **`[197] tBodyGyroJerk.arCoeff...Z.2`**         
* **`[198] tBodyGyroJerk.arCoeff...Z.3`**         
* **`[199] tBodyGyroJerk.arCoeff...Z.4`**         
* **`[200] tBodyGyroJerk.correlation...X.Y`**     
[201] tBodyGyroJerk.correlation...X.Z     
[202] tBodyGyroJerk.correlation...Y.Z     
[203] tBodyAccMag.mean..                  
[204] tBodyAccMag.std..                   
[205] tBodyAccMag.mad..                   
[206] tBodyAccMag.max..                   
[207] tBodyAccMag.min..                   
[208] tBodyAccMag.sma..                   
[209] tBodyAccMag.energy..                
[210] tBodyAccMag.iqr..                   
[211] tBodyAccMag.entropy..               
[212] tBodyAccMag.arCoeff..1              
[213] tBodyAccMag.arCoeff..2              
[214] tBodyAccMag.arCoeff..3              
[215] tBodyAccMag.arCoeff..4              
[216] tGravityAccMag.mean..               
[217] tGravityAccMag.std..                
[218] tGravityAccMag.mad..                
[219] tGravityAccMag.max..                
[220] tGravityAccMag.min..                
[221] tGravityAccMag.sma..                
[222] tGravityAccMag.energy..             
[223] tGravityAccMag.iqr..                
[224] tGravityAccMag.entropy..            
[225] tGravityAccMag.arCoeff..1           
[226] tGravityAccMag.arCoeff..2           
[227] tGravityAccMag.arCoeff..3           
[228] tGravityAccMag.arCoeff..4           
[229] tBodyAccJerkMag.mean..              
[230] tBodyAccJerkMag.std..               
[231] tBodyAccJerkMag.mad..               
[232] tBodyAccJerkMag.max..               
[233] tBodyAccJerkMag.min..               
[234] tBodyAccJerkMag.sma..               
[235] tBodyAccJerkMag.energy..            
[236] tBodyAccJerkMag.iqr..               
[237] tBodyAccJerkMag.entropy..           
[238] tBodyAccJerkMag.arCoeff..1          
[239] tBodyAccJerkMag.arCoeff..2          
[240] tBodyAccJerkMag.arCoeff..3          
[241] tBodyAccJerkMag.arCoeff..4          
[242] tBodyGyroMag.mean..                 
[243] tBodyGyroMag.std..                  
[244] tBodyGyroMag.mad..                  
[245] tBodyGyroMag.max..                  
[246] tBodyGyroMag.min..                  
[247] tBodyGyroMag.sma..                  
[248] tBodyGyroMag.energy..               
[249] tBodyGyroMag.iqr..                  
[250] tBodyGyroMag.entropy..              
[251] tBodyGyroMag.arCoeff..1             
[252] tBodyGyroMag.arCoeff..2             
[253] tBodyGyroMag.arCoeff..3             
[254] tBodyGyroMag.arCoeff..4             
[255] tBodyGyroJerkMag.mean..             
[256] tBodyGyroJerkMag.std..              
[257] tBodyGyroJerkMag.mad..              
[258] tBodyGyroJerkMag.max..              
[259] tBodyGyroJerkMag.min..              
[260] tBodyGyroJerkMag.sma..              
[261] tBodyGyroJerkMag.energy..           
[262] tBodyGyroJerkMag.iqr..              
[263] tBodyGyroJerkMag.entropy..          
[264] tBodyGyroJerkMag.arCoeff..1         
[265] tBodyGyroJerkMag.arCoeff..2         
[266] tBodyGyroJerkMag.arCoeff..3         
[267] tBodyGyroJerkMag.arCoeff..4         
[268] fBodyAcc.mean...X                   
[269] fBodyAcc.mean...Y                   
[270] fBodyAcc.mean...Z                   
[271] fBodyAcc.std...X                    
[272] fBodyAcc.std...Y                    
[273] fBodyAcc.std...Z                    
[274] fBodyAcc.mad...X                    
[275] fBodyAcc.mad...Y                    
[276] fBodyAcc.mad...Z                    
[277] fBodyAcc.max...X                    
[278] fBodyAcc.max...Y                    
[279] fBodyAcc.max...Z                    
[280] fBodyAcc.min...X                    
[281] fBodyAcc.min...Y                    
[282] fBodyAcc.min...Z                    
[283] fBodyAcc.sma..                      
[284] fBodyAcc.energy...X                 
[285] fBodyAcc.energy...Y                 
[286] fBodyAcc.energy...Z                 
[287] fBodyAcc.iqr...X                    
[288] fBodyAcc.iqr...Y                    
[289] fBodyAcc.iqr...Z                    
[290] fBodyAcc.entropy...X                
[291] fBodyAcc.entropy...Y                
[292] fBodyAcc.entropy...Z                
[293] fBodyAcc.maxInds.X                  
[294] fBodyAcc.maxInds.Y                  
[295] fBodyAcc.maxInds.Z                  
[296] fBodyAcc.meanFreq...X               
[297] fBodyAcc.meanFreq...Y               
[298] fBodyAcc.meanFreq...Z               
[299] fBodyAcc.skewness...X               
[300] fBodyAcc.kurtosis...X               
[301] fBodyAcc.skewness...Y               
[302] fBodyAcc.kurtosis...Y               
[303] fBodyAcc.skewness...Z               
[304] fBodyAcc.kurtosis...Z               
[305] fBodyAcc.bandsEnergy...1.8          
[306] fBodyAcc.bandsEnergy...9.16         
[307] fBodyAcc.bandsEnergy...17.24        
[308] fBodyAcc.bandsEnergy...25.32        
[309] fBodyAcc.bandsEnergy...33.40        
[310] fBodyAcc.bandsEnergy...41.48        
[311] fBodyAcc.bandsEnergy...49.56        
[312] fBodyAcc.bandsEnergy...57.64        
[313] fBodyAcc.bandsEnergy...1.16         
[314] fBodyAcc.bandsEnergy...17.32        
[315] fBodyAcc.bandsEnergy...33.48        
[316] fBodyAcc.bandsEnergy...49.64        
[317] fBodyAcc.bandsEnergy...1.24         
[318] fBodyAcc.bandsEnergy...25.48        
[319] fBodyAcc.bandsEnergy...1.8.1        
[320] fBodyAcc.bandsEnergy...9.16.1       
[321] fBodyAcc.bandsEnergy...17.24.1      
[322] fBodyAcc.bandsEnergy...25.32.1      
[323] fBodyAcc.bandsEnergy...33.40.1      
[324] fBodyAcc.bandsEnergy...41.48.1      
[325] fBodyAcc.bandsEnergy...49.56.1      
[326] fBodyAcc.bandsEnergy...57.64.1      
[327] fBodyAcc.bandsEnergy...1.16.1       
[328] fBodyAcc.bandsEnergy...17.32.1      
[329] fBodyAcc.bandsEnergy...33.48.1      
[330] fBodyAcc.bandsEnergy...49.64.1      
[331] fBodyAcc.bandsEnergy...1.24.1       
[332] fBodyAcc.bandsEnergy...25.48.1      
[333] fBodyAcc.bandsEnergy...1.8.2        
[334] fBodyAcc.bandsEnergy...9.16.2       
[335] fBodyAcc.bandsEnergy...17.24.2      
[336] fBodyAcc.bandsEnergy...25.32.2      
[337] fBodyAcc.bandsEnergy...33.40.2      
[338] fBodyAcc.bandsEnergy...41.48.2      
[339] fBodyAcc.bandsEnergy...49.56.2      
[340] fBodyAcc.bandsEnergy...57.64.2      
[341] fBodyAcc.bandsEnergy...1.16.2       
[342] fBodyAcc.bandsEnergy...17.32.2      
[343] fBodyAcc.bandsEnergy...33.48.2      
[344] fBodyAcc.bandsEnergy...49.64.2      
[345] fBodyAcc.bandsEnergy...1.24.2       
[346] fBodyAcc.bandsEnergy...25.48.2      
[347] fBodyAccJerk.mean...X               
[348] fBodyAccJerk.mean...Y               
[349] fBodyAccJerk.mean...Z               
[350] fBodyAccJerk.std...X                
[351] fBodyAccJerk.std...Y                
[352] fBodyAccJerk.std...Z                
[353] fBodyAccJerk.mad...X                
[354] fBodyAccJerk.mad...Y                
[355] fBodyAccJerk.mad...Z                
[356] fBodyAccJerk.max...X                
[357] fBodyAccJerk.max...Y                
[358] fBodyAccJerk.max...Z                
[359] fBodyAccJerk.min...X                
[360] fBodyAccJerk.min...Y                
[361] fBodyAccJerk.min...Z                
[362] fBodyAccJerk.sma..                  
[363] fBodyAccJerk.energy...X             
[364] fBodyAccJerk.energy...Y             
[365] fBodyAccJerk.energy...Z             
[366] fBodyAccJerk.iqr...X                
[367] fBodyAccJerk.iqr...Y                
[368] fBodyAccJerk.iqr...Z                
[369] fBodyAccJerk.entropy...X            
[370] fBodyAccJerk.entropy...Y            
[371] fBodyAccJerk.entropy...Z            
[372] fBodyAccJerk.maxInds.X              
[373] fBodyAccJerk.maxInds.Y              
[374] fBodyAccJerk.maxInds.Z              
[375] fBodyAccJerk.meanFreq...X           
[376] fBodyAccJerk.meanFreq...Y           
[377] fBodyAccJerk.meanFreq...Z           
[378] fBodyAccJerk.skewness...X           
[379] fBodyAccJerk.kurtosis...X           
[380] fBodyAccJerk.skewness...Y           
[381] fBodyAccJerk.kurtosis...Y           
[382] fBodyAccJerk.skewness...Z           
[383] fBodyAccJerk.kurtosis...Z           
[384] fBodyAccJerk.bandsEnergy...1.8      
[385] fBodyAccJerk.bandsEnergy...9.16     
[386] fBodyAccJerk.bandsEnergy...17.24    
[387] fBodyAccJerk.bandsEnergy...25.32    
[388] fBodyAccJerk.bandsEnergy...33.40    
[389] fBodyAccJerk.bandsEnergy...41.48    
[390] fBodyAccJerk.bandsEnergy...49.56    
[391] fBodyAccJerk.bandsEnergy...57.64    
[392] fBodyAccJerk.bandsEnergy...1.16     
[393] fBodyAccJerk.bandsEnergy...17.32    
[394] fBodyAccJerk.bandsEnergy...33.48    
[395] fBodyAccJerk.bandsEnergy...49.64    
[396] fBodyAccJerk.bandsEnergy...1.24     
[397] fBodyAccJerk.bandsEnergy...25.48    
[398] fBodyAccJerk.bandsEnergy...1.8.1    
[399] fBodyAccJerk.bandsEnergy...9.16.1   
[400] fBodyAccJerk.bandsEnergy...17.24.1  
[401] fBodyAccJerk.bandsEnergy...25.32.1  
[402] fBodyAccJerk.bandsEnergy...33.40.1  
[403] fBodyAccJerk.bandsEnergy...41.48.1  
[404] fBodyAccJerk.bandsEnergy...49.56.1  
[405] fBodyAccJerk.bandsEnergy...57.64.1  
[406] fBodyAccJerk.bandsEnergy...1.16.1   
[407] fBodyAccJerk.bandsEnergy...17.32.1  
[408] fBodyAccJerk.bandsEnergy...33.48.1  
[409] fBodyAccJerk.bandsEnergy...49.64.1  
[410] fBodyAccJerk.bandsEnergy...1.24.1   
[411] fBodyAccJerk.bandsEnergy...25.48.1  
[412] fBodyAccJerk.bandsEnergy...1.8.2    
[413] fBodyAccJerk.bandsEnergy...9.16.2   
[414] fBodyAccJerk.bandsEnergy...17.24.2  
[415] fBodyAccJerk.bandsEnergy...25.32.2  
[416] fBodyAccJerk.bandsEnergy...33.40.2  
[417] fBodyAccJerk.bandsEnergy...41.48.2  
[418] fBodyAccJerk.bandsEnergy...49.56.2  
[419] fBodyAccJerk.bandsEnergy...57.64.2  
[420] fBodyAccJerk.bandsEnergy...1.16.2   
[421] fBodyAccJerk.bandsEnergy...17.32.2  
[422] fBodyAccJerk.bandsEnergy...33.48.2  
[423] fBodyAccJerk.bandsEnergy...49.64.2  
[424] fBodyAccJerk.bandsEnergy...1.24.2   
[425] fBodyAccJerk.bandsEnergy...25.48.2  
[426] fBodyGyro.mean...X                  
[427] fBodyGyro.mean...Y                  
[428] fBodyGyro.mean...Z                  
[429] fBodyGyro.std...X                   
[430] fBodyGyro.std...Y                   
[431] fBodyGyro.std...Z                   
[432] fBodyGyro.mad...X                   
[433] fBodyGyro.mad...Y                   
[434] fBodyGyro.mad...Z                   
[435] fBodyGyro.max...X                   
[436] fBodyGyro.max...Y                   
[437] fBodyGyro.max...Z                   
[438] fBodyGyro.min...X                   
[439] fBodyGyro.min...Y                   
[440] fBodyGyro.min...Z                   
[441] fBodyGyro.sma..                     
[442] fBodyGyro.energy...X                
[443] fBodyGyro.energy...Y                
[444] fBodyGyro.energy...Z                
[445] fBodyGyro.iqr...X                   
[446] fBodyGyro.iqr...Y                   
[447] fBodyGyro.iqr...Z                   
[448] fBodyGyro.entropy...X               
[449] fBodyGyro.entropy...Y               
[450] fBodyGyro.entropy...Z               
[451] fBodyGyro.maxInds.X                 
[452] fBodyGyro.maxInds.Y                 
[453] fBodyGyro.maxInds.Z                 
[454] fBodyGyro.meanFreq...X              
[455] fBodyGyro.meanFreq...Y              
[456] fBodyGyro.meanFreq...Z              
[457] fBodyGyro.skewness...X              
[458] fBodyGyro.kurtosis...X              
[459] fBodyGyro.skewness...Y              
[460] fBodyGyro.kurtosis...Y              
[461] fBodyGyro.skewness...Z              
[462] fBodyGyro.kurtosis...Z              
[463] fBodyGyro.bandsEnergy...1.8         
[464] fBodyGyro.bandsEnergy...9.16        
[465] fBodyGyro.bandsEnergy...17.24       
[466] fBodyGyro.bandsEnergy...25.32       
[467] fBodyGyro.bandsEnergy...33.40       
[468] fBodyGyro.bandsEnergy...41.48       
[469] fBodyGyro.bandsEnergy...49.56       
[470] fBodyGyro.bandsEnergy...57.64       
[471] fBodyGyro.bandsEnergy...1.16        
[472] fBodyGyro.bandsEnergy...17.32       
[473] fBodyGyro.bandsEnergy...33.48       
[474] fBodyGyro.bandsEnergy...49.64       
[475] fBodyGyro.bandsEnergy...1.24        
[476] fBodyGyro.bandsEnergy...25.48       
[477] fBodyGyro.bandsEnergy...1.8.1       
[478] fBodyGyro.bandsEnergy...9.16.1      
[479] fBodyGyro.bandsEnergy...17.24.1     
[480] fBodyGyro.bandsEnergy...25.32.1     
[481] fBodyGyro.bandsEnergy...33.40.1     
[482] fBodyGyro.bandsEnergy...41.48.1     
[483] fBodyGyro.bandsEnergy...49.56.1     
[484] fBodyGyro.bandsEnergy...57.64.1     
[485] fBodyGyro.bandsEnergy...1.16.1      
[486] fBodyGyro.bandsEnergy...17.32.1     
[487] fBodyGyro.bandsEnergy...33.48.1     
[488] fBodyGyro.bandsEnergy...49.64.1     
[489] fBodyGyro.bandsEnergy...1.24.1      
[490] fBodyGyro.bandsEnergy...25.48.1     
[491] fBodyGyro.bandsEnergy...1.8.2       
[492] fBodyGyro.bandsEnergy...9.16.2      
[493] fBodyGyro.bandsEnergy...17.24.2     
[494] fBodyGyro.bandsEnergy...25.32.2     
[495] fBodyGyro.bandsEnergy...33.40.2     
[496] fBodyGyro.bandsEnergy...41.48.2     
[497] fBodyGyro.bandsEnergy...49.56.2     
[498] fBodyGyro.bandsEnergy...57.64.2     
[499] fBodyGyro.bandsEnergy...1.16.2      
[500] fBodyGyro.bandsEnergy...17.32.2     
[501] fBodyGyro.bandsEnergy...33.48.2     
[502] fBodyGyro.bandsEnergy...49.64.2     
[503] fBodyGyro.bandsEnergy...1.24.2      
[504] fBodyGyro.bandsEnergy...25.48.2     
[505] fBodyAccMag.mean..                  
[506] fBodyAccMag.std..                   
[507] fBodyAccMag.mad..                   
[508] fBodyAccMag.max..                   
[509] fBodyAccMag.min..                   
[510] fBodyAccMag.sma..                   
[511] fBodyAccMag.energy..                
[512] fBodyAccMag.iqr..                   
[513] fBodyAccMag.entropy..               
[514] fBodyAccMag.maxInds                 
[515] fBodyAccMag.meanFreq..              
[516] fBodyAccMag.skewness..              
[517] fBodyAccMag.kurtosis..              
[518] fBodyAccJerkMag.mean..              
[519] fBodyAccJerkMag.std..               
[520] fBodyAccJerkMag.mad..               
[521] fBodyAccJerkMag.max..               
[522] fBodyAccJerkMag.min..               
[523] fBodyAccJerkMag.sma..               
[524] fBodyAccJerkMag.energy..            
[525] fBodyAccJerkMag.iqr..               
[526] fBodyAccJerkMag.entropy..           
[527] fBodyAccJerkMag.maxInds             
[528] fBodyAccJerkMag.meanFreq..          
[529] fBodyAccJerkMag.skewness..          
[530] fBodyAccJerkMag.kurtosis..          
[531] fBodyGyroMag.mean..                 
[532] fBodyGyroMag.std..                  
[533] fBodyGyroMag.mad..                  
[534] fBodyGyroMag.max..                  
[535] fBodyGyroMag.min..                  
[536] fBodyGyroMag.sma..                  
[537] fBodyGyroMag.energy..               
[538] fBodyGyroMag.iqr..                  
[539] fBodyGyroMag.entropy..              
[540] fBodyGyroMag.maxInds                
[541] fBodyGyroMag.meanFreq..             
[542] fBodyGyroMag.skewness..             
[543] fBodyGyroMag.kurtosis..             
[544] fBodyGyroJerkMag.mean..             
[545] fBodyGyroJerkMag.std..              
[546] fBodyGyroJerkMag.mad..              
[547] fBodyGyroJerkMag.max..              
[548] fBodyGyroJerkMag.min..              
[549] fBodyGyroJerkMag.sma..              
[550] fBodyGyroJerkMag.energy..           
[551] fBodyGyroJerkMag.iqr..              
[552] fBodyGyroJerkMag.entropy..          
[553] fBodyGyroJerkMag.maxInds            
[554] fBodyGyroJerkMag.meanFreq..         
[555] fBodyGyroJerkMag.skewness..         
[556] fBodyGyroJerkMag.kurtosis..         
[557] angle.tBodyAccMean.gravity.         
[558] angle.tBodyAccJerkMean..gravityMean.    
[559] angle.tBodyGyroMean.gravityMean.    
[560] angle.tBodyGyroJerkMean.gravityMean.    
[561] angle.X.gravityMean.                
[562] angle.Y.gravityMean.                
[563] angle.Z.gravityMean.                


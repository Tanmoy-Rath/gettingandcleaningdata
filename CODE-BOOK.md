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

- **angle.tBodyAccMean.gravity.**<br/>
- **angle.tBodyAccJerkMean..gravityMean.**<br/>
- **angle.X.gravityMean.**<br/>
- **angle.Y.gravityMean.**<br/>
- **angle.Z.gravityMean.**<br/>
- **angle.tBodyGyroMean.gravityMean.**<br/>
- **angle.tBodyGyroJerkMean.gravityMean.**

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
> e.g. **angle.tBodyAccJerkMean..gravityMean.** is the data variable (or column), containing the angle between mean of linear acceleration of body and mean of gravity component of acceleration. see **_<a href="https://github.com/Tanmoy-Rath/gettingandcleaningdata/blob/master/CODE-BOOK.md#abbreviations-explained">Abbreviations explained</a>_** for more details.

The column names are listed below along with their column numbers within [ ].

```R
> str(Tidy_data)
Classes ‘grouped_df’, ‘tbl_df’, ‘tbl’ and 'data.frame':	180 obs. of  563 variables:
 $ subject_id                          : int  1 1 1 1 1 1 2 2 2 2 ...
 $ activity                            : Factor w/ 6 levels "WALKING","WALKING_UPSTAIRS",..: 1 2 3 4 5 6 1 2 3 4 ...
 $ tBodyAcc.mean...X                   : num  0.277 0.255 0.289 0.261 0.279 ...
 $ tBodyAcc.mean...Y                   : num  -0.01738 -0.02395 -0.00992 -0.00131 -0.01614 ...
 $ tBodyAcc.mean...Z                   : num  -0.1111 -0.0973 -0.1076 -0.1045 -0.1106 ...
 $ tBodyAcc.std...X                    : num  -0.284 -0.355 0.03 -0.977 -0.996 ...
 $ tBodyAcc.std...Y                    : num  0.11446 -0.00232 -0.03194 -0.92262 -0.97319 ...
 $ tBodyAcc.std...Z                    : num  -0.26 -0.0195 -0.2304 -0.9396 -0.9798 ...
 $ tBodyAcc.mad...X                    : num  -0.3407 -0.4028 -0.0441 -0.9795 -0.9961 ...
 $ tBodyAcc.mad...Y                    : num  0.06181 0.00768 -0.1074 -0.91966 -0.97176 ...
 $ tBodyAcc.mad...Z                    : num  -0.25 0.036 -0.212 -0.939 -0.979 ...
 $ tBodyAcc.max...X                    : num  -0.103 -0.159 0.389 -0.927 -0.939 ...
 $ tBodyAcc.max...Y                    : num  -0.0557 -0.1027 -0.0953 -0.5174 -0.5609 ...
 $ tBodyAcc.max...Z                    : num  -0.255 -0.161 -0.317 -0.786 -0.813 ...
 $ tBodyAcc.min...X                    : num  0.1196 0.2382 0.0157 0.8203 0.8489 ...
 $ tBodyAcc.min...Y                    : num  -0.0212 0.144 -0.0437 0.6828 0.685 ...
 $ tBodyAcc.min...Z                    : num  0.437 0.442 0.305 0.822 0.838 ...
 $ tBodyAcc.sma..                      : num  -0.1258 -0.0968 0.008 -0.9457 -0.9844 ...
 $ tBodyAcc.energy...X                 : num  -0.739 -0.788 -0.463 -0.998 -1 ...
 $ tBodyAcc.energy...Y                 : num  -0.758 -0.805 -0.813 -0.99 -0.999 ...
 $ tBodyAcc.energy...Z                 : num  -0.748 -0.566 -0.724 -0.987 -0.999 ...
 $ tBodyAcc.iqr...X                    : num  -0.424 -0.496 -0.225 -0.983 -0.996 ...
 $ tBodyAcc.iqr...Y                    : num  -0.299 -0.192 -0.399 -0.932 -0.974 ...
 $ tBodyAcc.iqr...Z                    : num  -0.2525 0.0722 -0.2058 -0.9429 -0.9786 ...
 $ tBodyAcc.entropy...X                : num  0.359 0.431 0.237 -0.594 -0.654 ...
 $ tBodyAcc.entropy...Y                : num  0.437 0.327 0.376 -0.399 -0.563 ...
 $ tBodyAcc.entropy...Z                : num  0.04237 -0.00647 0.16973 -0.5213 -0.58945 ...
 $ tBodyAcc.arCoeff...X.1              : num  -0.335 -0.524 -0.395 0.152 0.297 ...
 $ tBodyAcc.arCoeff...X.2              : num  0.3484 0.4386 0.3676 -0.0594 -0.1455 ...
 $ tBodyAcc.arCoeff...X.3              : num  -0.149 -0.24 -0.31 0.041 0.114 ...
 $ tBodyAcc.arCoeff...X.4              : num  0.07994 0.13434 0.2763 -0.00412 0.0807 ...
 $ tBodyAcc.arCoeff...Y.1              : num  -0.167 -0.327 -0.121 0.169 0.185 ...
 $ tBodyAcc.arCoeff...Y.2              : num  0.175 0.227 0.155 -0.129 -0.138 ...
 $ tBodyAcc.arCoeff...Y.3              : num  0.1678 0.04 0.0867 0.1851 0.1903 ...
 $ tBodyAcc.arCoeff...Y.4              : num  -0.0514 0.0368 0.0377 -0.117 -0.0158 ...
 $ tBodyAcc.arCoeff...Z.1              : num  -0.1189 -0.4687 0.0804 0.2589 0.2799 ...
 $ tBodyAcc.arCoeff...Z.2              : num  0.1673 0.3076 0.0878 -0.1171 -0.1279 ...
 $ tBodyAcc.arCoeff...Z.3              : num  0.00262 -0.16858 0.02916 0.08508 0.11685 ...
 $ tBodyAcc.arCoeff...Z.4              : num  -0.2752 0.0138 -0.2914 -0.0227 -0.1039 ...
 $ tBodyAcc.correlation...X.Y          : num  -0.144 -0.387 -0.454 -0.403 0.128 ...
 $ tBodyAcc.correlation...X.Z          : num  -0.19123 -0.17701 -0.22554 -0.20119 -0.00543 ...
 $ tBodyAcc.correlation...Y.Z          : num  0.3802 0.1616 0.0757 0.1183 0.2883 ...
 $ tGravityAcc.mean...X                : num  0.935 0.893 0.932 0.832 0.943 ...
 $ tGravityAcc.mean...Y                : num  -0.282 -0.362 -0.267 0.204 -0.273 ...
 $ tGravityAcc.mean...Z                : num  -0.0681 -0.0754 -0.0621 0.332 0.0135 ...
 $ tGravityAcc.std...X                 : num  -0.977 -0.956 -0.951 -0.968 -0.994 ...
 $ tGravityAcc.std...Y                 : num  -0.971 -0.953 -0.937 -0.936 -0.981 ...
 $ tGravityAcc.std...Z                 : num  -0.948 -0.912 -0.896 -0.949 -0.976 ...
 $ tGravityAcc.mad...X                 : num  -0.977 -0.958 -0.951 -0.969 -0.994 ...
 $ tGravityAcc.mad...Y                 : num  -0.972 -0.954 -0.938 -0.938 -0.981 ...
 $ tGravityAcc.mad...Z                 : num  -0.95 -0.915 -0.898 -0.95 -0.977 ...
 $ tGravityAcc.max...X                 : num  0.869 0.835 0.876 0.768 0.87 ...
 $ tGravityAcc.max...Y                 : num  -0.294 -0.365 -0.27 0.188 -0.288 ...
 $ tGravityAcc.max...Z                 : num  -0.0629 -0.0612 -0.0465 0.3319 0.0097 ...
 $ tGravityAcc.min...X                 : num  0.947 0.898 0.936 0.843 0.961 ...
 $ tGravityAcc.min...Y                 : num  -0.26 -0.344 -0.256 0.205 -0.248 ...
 $ tGravityAcc.min...Z                 : num  -0.07849 -0.09441 -0.0863 0.32184 0.00938 ...
 $ tGravityAcc.sma..                   : num  -0.1418 0.0141 -0.2063 0.2253 -0.2439 ...
 $ tGravityAcc.energy...X              : num  0.826 0.719 0.817 0.575 0.846 ...
 $ tGravityAcc.energy...Y              : num  -0.864 -0.77 -0.879 -0.88 -0.862 ...
 $ tGravityAcc.energy...Z              : num  -0.986 -0.985 -0.988 -0.779 -0.995 ...
 $ tGravityAcc.iqr...X                 : num  -0.978 -0.962 -0.953 -0.972 -0.994 ...
 $ tGravityAcc.iqr...Y                 : num  -0.973 -0.957 -0.941 -0.944 -0.981 ...
 $ tGravityAcc.iqr...Z                 : num  -0.955 -0.924 -0.907 -0.954 -0.978 ...
 $ tGravityAcc.entropy...X             : num  -0.667 -0.288 -0.445 -0.686 -0.886 ...
 $ tGravityAcc.entropy...Y             : num  -1 -1 -1 -0.489 -1 ...
 $ tGravityAcc.entropy...Z             : num  -0.993 -1 -0.98 -0.626 -0.852 ...
 $ tGravityAcc.arCoeff...X.1           : num  -0.298 -0.644 -0.571 -0.53 -0.383 ...
 $ tGravityAcc.arCoeff...X.2           : num  0.383 0.687 0.63 0.543 0.404 ...
 $ tGravityAcc.arCoeff...X.3           : num  -0.464 -0.729 -0.688 -0.555 -0.425 ...
 $ tGravityAcc.arCoeff...X.4           : num  0.543 0.771 0.745 0.568 0.447 ...
 $ tGravityAcc.arCoeff...Y.1           : num  0.0308 -0.4969 -0.2103 -0.4613 -0.394 ...
 $ tGravityAcc.arCoeff...Y.2           : num  0.0226 0.5204 0.2307 0.414 0.3507 ...
 $ tGravityAcc.arCoeff...Y.3           : num  -0.147 -0.579 -0.307 -0.401 -0.347 ...
 $ tGravityAcc.arCoeff...Y.4           : num  0.296 0.649 0.403 0.404 0.36 ...
 $ tGravityAcc.arCoeff...Z.1           : num  -0.251 -0.687 -0.204 -0.449 -0.393 ...
 $ tGravityAcc.arCoeff...Z.2           : num  0.275 0.701 0.223 0.467 0.408 ...
 $ tGravityAcc.arCoeff...Z.3           : num  -0.297 -0.713 -0.241 -0.484 -0.424 ...
 $ tGravityAcc.arCoeff...Z.4           : num  0.314 0.722 0.256 0.498 0.436 ...
 $ tGravityAcc.correlation...X.Y       : num  0.321 0.599 0.229 -0.739 0.473 ...
 $ tGravityAcc.correlation...X.Z       : num  -0.0401 -0.3728 -0.2974 -0.4975 0.1378 ...
 $ tGravityAcc.correlation...Y.Z       : num  0.281 -0.178 0.101 0.301 0.47 ...
 $ tBodyAccJerk.mean...X               : num  0.074 0.1014 0.0542 0.0775 0.0754 ...
 $ tBodyAccJerk.mean...Y               : num  0.028272 0.019486 0.02965 -0.000619 0.007976 ...
 $ tBodyAccJerk.mean...Z               : num  -0.00417 -0.04556 -0.01097 -0.00337 -0.00369 ...
 $ tBodyAccJerk.std...X                : num  -0.1136 -0.4468 -0.0123 -0.9864 -0.9946 ...
 $ tBodyAccJerk.std...Y                : num  0.067 -0.378 -0.102 -0.981 -0.986 ...
 $ tBodyAccJerk.std...Z                : num  -0.503 -0.707 -0.346 -0.988 -0.992 ...
 $ tBodyAccJerk.mad...X                : num  -0.1022 -0.42896 -0.00217 -0.98773 -0.99478 ...
 $ tBodyAccJerk.mad...Y                : num  0.0859 -0.339 -0.0851 -0.9808 -0.9841 ...
 $ tBodyAccJerk.mad...Z                : num  -0.468 -0.678 -0.316 -0.987 -0.991 ...
 $ tBodyAccJerk.max...X                : num  -0.291 -0.614 -0.17 -0.986 -0.994 ...
 $ tBodyAccJerk.max...Y                : num  -0.314 -0.64 -0.388 -0.988 -0.99 ...
 $ tBodyAccJerk.max...Z                : num  -0.672 -0.807 -0.486 -0.988 -0.992 ...
 $ tBodyAccJerk.min...X                : num  -0.03 0.312 -0.061 0.984 0.992 ...
 $ tBodyAccJerk.min...Y                : num  0.0992 0.4861 0.2839 0.9841 0.9895 ...
 $ tBodyAccJerk.min...Z                : num  0.434 0.701 0.348 0.985 0.989 ...
 $ tBodyAccJerk.sma..                  : num  -0.1257 -0.459 -0.0774 -0.9872 -0.9926 ...
 $ tBodyAccJerk.energy...X             : num  -0.6 -0.843 -0.505 -0.999 -1 ...
  [list output truncated]
 - attr(*, "groups")=Classes ‘tbl_df’, ‘tbl’ and 'data.frame':	30 obs. of  2 variables:
  ..$ subject_id: int  1 2 3 4 5 6 7 8 9 10 ...
  ..$ .rows     :List of 30
  .. ..$ : int  1 2 3 4 5 6
  .. ..$ : int  7 8 9 10 11 12
  .. ..$ : int  13 14 15 16 17 18
  .. ..$ : int  19 20 21 22 23 24
  .. ..$ : int  25 26 27 28 29 30
  .. ..$ : int  31 32 33 34 35 36
  .. ..$ : int  37 38 39 40 41 42
  .. ..$ : int  43 44 45 46 47 48
  .. ..$ : int  49 50 51 52 53 54
  .. ..$ : int  55 56 57 58 59 60
  .. ..$ : int  61 62 63 64 65 66
  .. ..$ : int  67 68 69 70 71 72
  .. ..$ : int  73 74 75 76 77 78
  .. ..$ : int  79 80 81 82 83 84
  .. ..$ : int  85 86 87 88 89 90
  .. ..$ : int  91 92 93 94 95 96
  .. ..$ : int  97 98 99 100 101 102
  .. ..$ : int  103 104 105 106 107 108
  .. ..$ : int  109 110 111 112 113 114
  .. ..$ : int  115 116 117 118 119 120
  .. ..$ : int  121 122 123 124 125 126
  .. ..$ : int  127 128 129 130 131 132
  .. ..$ : int  133 134 135 136 137 138
  .. ..$ : int  139 140 141 142 143 144
  .. ..$ : int  145 146 147 148 149 150
  .. ..$ : int  151 152 153 154 155 156
  .. ..$ : int  157 158 159 160 161 162
  .. ..$ : int  163 164 165 166 167 168
  .. ..$ : int  169 170 171 172 173 174
  .. ..$ : int  175 176 177 178 179 180
  ..- attr(*, ".drop")= logi TRUE
> 
```

* **`[3] tBodyAcc.mean...X`**                     
* **`[4] tBodyAcc.mean...Y`**                     
* **`[5] tBodyAcc.mean...Z`**                     
* **`[6] tBodyAcc.std...X`**                      
* **`[7] tBodyAcc.std...Y`**                      
* **`[8] tBodyAcc.std...Z`**                      
* **`[9] tBodyAcc.mad...X`**                      
* **`[10] tBodyAcc.mad...Y`**                     
* **`[11] tBodyAcc.mad...Z`**                     
* **`[12] tBodyAcc.max...X`**                     
* **`[13] tBodyAcc.max...Y`**                     
* **`[14] tBodyAcc.max...Z`**                     
* **`[15] tBodyAcc.min...X`**                     
* **`[16] tBodyAcc.min...Y`**                     
* **`[17] tBodyAcc.min...Z`**                     
* **`[18] tBodyAcc.sma..`**                       
* **`[19] tBodyAcc.energy...X`**                  
* **`[20] tBodyAcc.energy...Y`**                  
* **`[21] tBodyAcc.energy...Z`**                  
* **`[22] tBodyAcc.iqr...X`**                     
* **`[23] tBodyAcc.iqr...Y`**                     
* **`[24] tBodyAcc.iqr...Z`**                     
* **`[25] tBodyAcc.entropy...X`**                 
* **`[26] tBodyAcc.entropy...Y`**                 
* **`[27] tBodyAcc.entropy...Z`**                 
* **`[28] tBodyAcc.arCoeff...X.1`**               
* **`[29] tBodyAcc.arCoeff...X.2`**               
* **`[30] tBodyAcc.arCoeff...X.3`**               
* **`[31] tBodyAcc.arCoeff...X.4`**               
* **`[32] tBodyAcc.arCoeff...Y.1`**               
* **`[33] tBodyAcc.arCoeff...Y.2`**               
* **`[34] tBodyAcc.arCoeff...Y.3`**               
* **`[35] tBodyAcc.arCoeff...Y.4`**               
* **`[36] tBodyAcc.arCoeff...Z.1`**               
* **`[37] tBodyAcc.arCoeff...Z.2`**               
* **`[38] tBodyAcc.arCoeff...Z.3`**               
* **`[39] tBodyAcc.arCoeff...Z.4`**               
* **`[40] tBodyAcc.correlation...X.Y`**           
* **`[41] tBodyAcc.correlation...X.Z`**           
* **`[42] tBodyAcc.correlation...Y.Z`**           
* **`[43] tGravityAcc.mean...X`**                 
* **`[44] tGravityAcc.mean...Y`**                 
* **`[45] tGravityAcc.mean...Z`**                 
* **`[46] tGravityAcc.std...X`**                  
* **`[47] tGravityAcc.std...Y`**                  
* **`[48] tGravityAcc.std...Z`**                  
* **`[49] tGravityAcc.mad...X`**                  
* **`[50] tGravityAcc.mad...Y`**                  
* **`[51] tGravityAcc.mad...Z`**                  
* **`[52] tGravityAcc.max...X`**                  
* **`[53] tGravityAcc.max...Y`**                  
* **`[54] tGravityAcc.max...Z`**                  
* **`[55] tGravityAcc.min...X`**                  
* **`[56] tGravityAcc.min...Y`**                  
* **`[57] tGravityAcc.min...Z`**                  
* **`[58] tGravityAcc.sma..`**                    
* **`[59] tGravityAcc.energy...X`**               
* **`[60] tGravityAcc.energy...Y`**               
* **`[61] tGravityAcc.energy...Z`**               
* **`[62] tGravityAcc.iqr...X`**                  
* **`[63] tGravityAcc.iqr...Y`**                  
* **`[64] tGravityAcc.iqr...Z`**                  
* **`[65] tGravityAcc.entropy...X`**              
* **`[66] tGravityAcc.entropy...Y`**              
* **`[67] tGravityAcc.entropy...Z`**              
* **`[68] tGravityAcc.arCoeff...X.1`**            
* **`[69] tGravityAcc.arCoeff...X.2`**            
* **`[70] tGravityAcc.arCoeff...X.3`**            
* **`[71] tGravityAcc.arCoeff...X.4`**            
* **`[72] tGravityAcc.arCoeff...Y.1`**            
* **`[73] tGravityAcc.arCoeff...Y.2`**            
* **`[74] tGravityAcc.arCoeff...Y.3`**            
* **`[75] tGravityAcc.arCoeff...Y.4`**            
* **`[76] tGravityAcc.arCoeff...Z.1`**            
* **`[77] tGravityAcc.arCoeff...Z.2`**            
* **`[78] tGravityAcc.arCoeff...Z.3`**            
* **`[79] tGravityAcc.arCoeff...Z.4`**            
* **`[80] tGravityAcc.correlation...X.Y`**        
* **`[81] tGravityAcc.correlation...X.Z`**        
* **`[82] tGravityAcc.correlation...Y.Z`**        
* **`[83] tBodyAccJerk.mean...X`**                
* **`[84] tBodyAccJerk.mean...Y`**                
* **`[85] tBodyAccJerk.mean...Z`**                
* **`[86] tBodyAccJerk.std...X`**                 
* **`[87] tBodyAccJerk.std...Y`**                 
* **`[88] tBodyAccJerk.std...Z`**                 
* **`[89] tBodyAccJerk.mad...X`**                 
* **`[90] tBodyAccJerk.mad...Y`**                 
* **`[91] tBodyAccJerk.mad...Z`**                 
* **`[92] tBodyAccJerk.max...X`**                 
* **`[93] tBodyAccJerk.max...Y`**                 
* **`[94] tBodyAccJerk.max...Z`**                 
* **`[95] tBodyAccJerk.min...X`**                 
* **`[96] tBodyAccJerk.min...Y`**                 
* **`[97] tBodyAccJerk.min...Z`**                 
* **`[98] tBodyAccJerk.sma..`**                   
* **`[99] tBodyAccJerk.energy...X`**              
* **`[100] tBodyAccJerk.energy...Y`**             
* **`[101] tBodyAccJerk.energy...Z`**             
* **`[102] tBodyAccJerk.iqr...X`**                
* **`[103] tBodyAccJerk.iqr...Y`**                
* **`[104] tBodyAccJerk.iqr...Z`**                
* **`[105] tBodyAccJerk.entropy...X`**            
* **`[106] tBodyAccJerk.entropy...Y`**            
* **`[107] tBodyAccJerk.entropy...Z`**            
* **`[108] tBodyAccJerk.arCoeff...X.1`**          
* **`[109] tBodyAccJerk.arCoeff...X.2`**          
* **`[110] tBodyAccJerk.arCoeff...X.3`**          
* **`[111] tBodyAccJerk.arCoeff...X.4`**          
* **`[112] tBodyAccJerk.arCoeff...Y.1`**          
* **`[113] tBodyAccJerk.arCoeff...Y.2`**          
* **`[114] tBodyAccJerk.arCoeff...Y.3`**          
* **`[115] tBodyAccJerk.arCoeff...Y.4`**          
* **`[116] tBodyAccJerk.arCoeff...Z.1`**          
* **`[117] tBodyAccJerk.arCoeff...Z.2`**          
* **`[118] tBodyAccJerk.arCoeff...Z.3`**          
* **`[119] tBodyAccJerk.arCoeff...Z.4`**          
* **`[120] tBodyAccJerk.correlation...X.Y`**      
* **`[121] tBodyAccJerk.correlation...X.Z`**      
* **`[122] tBodyAccJerk.correlation...Y.Z`**      
* **`[123] tBodyGyro.mean...X`**                  
* **`[124] tBodyGyro.mean...Y`**                  
* **`[125] tBodyGyro.mean...Z`**                  
* **`[126] tBodyGyro.std...X`**                   
* **`[127] tBodyGyro.std...Y`**                   
* **`[128] tBodyGyro.std...Z`**                   
* **`[129] tBodyGyro.mad...X`**                   
* **`[130] tBodyGyro.mad...Y`**                   
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
* **`[201] tBodyGyroJerk.correlation...X.Z`**     
* **`[202] tBodyGyroJerk.correlation...Y.Z`**     
* **`[203] tBodyAccMag.mean..`**                  
* **`[204] tBodyAccMag.std..`**                   
* **`[205] tBodyAccMag.mad..`**                   
* **`[206] tBodyAccMag.max..`**                   
* **`[207] tBodyAccMag.min..`**                   
* **`[208] tBodyAccMag.sma..`**                   
* **`[209] tBodyAccMag.energy..`**                
* **`[210] tBodyAccMag.iqr..`**                   
* **`[211] tBodyAccMag.entropy..`**               
* **`[212] tBodyAccMag.arCoeff..1`**              
* **`[213] tBodyAccMag.arCoeff..2`**              
* **`[214] tBodyAccMag.arCoeff..3`**              
* **`[215] tBodyAccMag.arCoeff..4`**              
* **`[216] tGravityAccMag.mean..`**               
* **`[217] tGravityAccMag.std..`**                
* **`[218] tGravityAccMag.mad..`**                
* **`[219] tGravityAccMag.max..`**                
* **`[220] tGravityAccMag.min..`**                
* **`[221] tGravityAccMag.sma..`**                
* **`[222] tGravityAccMag.energy..`**             
* **`[223] tGravityAccMag.iqr..`**                
* **`[224] tGravityAccMag.entropy..`**            
* **`[225] tGravityAccMag.arCoeff..1`**           
* **`[226] tGravityAccMag.arCoeff..2`**           
* **`[227] tGravityAccMag.arCoeff..3`**           
* **`[228] tGravityAccMag.arCoeff..4`**           
* **`[229] tBodyAccJerkMag.mean..`**              
* **`[230] tBodyAccJerkMag.std..`**               
* **`[231] tBodyAccJerkMag.mad..`**               
* **`[232] tBodyAccJerkMag.max..`**               
* **`[233] tBodyAccJerkMag.min..`**               
* **`[234] tBodyAccJerkMag.sma..`**               
* **`[235] tBodyAccJerkMag.energy..`**            
* **`[236] tBodyAccJerkMag.iqr..`**               
* **`[237] tBodyAccJerkMag.entropy..`**           
* **`[238] tBodyAccJerkMag.arCoeff..1`**          
* **`[239] tBodyAccJerkMag.arCoeff..2`**          
* **`[240] tBodyAccJerkMag.arCoeff..3`**          
* **`[241] tBodyAccJerkMag.arCoeff..4`**          
* **`[242] tBodyGyroMag.mean..`**                 
* **`[243] tBodyGyroMag.std..`**                  
* **`[244] tBodyGyroMag.mad..`**                  
* **`[245] tBodyGyroMag.max..`**                  
* **`[246] tBodyGyroMag.min..`**                  
* **`[247] tBodyGyroMag.sma..`**                  
* **`[248] tBodyGyroMag.energy..`**               
* **`[249] tBodyGyroMag.iqr..`**                  
* **`[250] tBodyGyroMag.entropy..`**              
* **`[251] tBodyGyroMag.arCoeff..1`**             
* **`[252] tBodyGyroMag.arCoeff..2`**             
* **`[253] tBodyGyroMag.arCoeff..3`**             
* **`[254] tBodyGyroMag.arCoeff..4`**             
* **`[255] tBodyGyroJerkMag.mean..`**             
* **`[256] tBodyGyroJerkMag.std..`**              
* **`[257] tBodyGyroJerkMag.mad..`**              
* **`[258] tBodyGyroJerkMag.max..`**              
* **`[259] tBodyGyroJerkMag.min..`**              
* **`[260] tBodyGyroJerkMag.sma..`**              
* **`[261] tBodyGyroJerkMag.energy..`**           
* **`[262] tBodyGyroJerkMag.iqr..`**              
* **`[263] tBodyGyroJerkMag.entropy..`**          
* **`[264] tBodyGyroJerkMag.arCoeff..1`**         
* **`[265] tBodyGyroJerkMag.arCoeff..2`**         
* **`[266] tBodyGyroJerkMag.arCoeff..3`**         
* **`[267] tBodyGyroJerkMag.arCoeff..4`**         
* **`[268] fBodyAcc.mean...X`**                   
* **`[269] fBodyAcc.mean...Y`**                   
* **`[270] fBodyAcc.mean...Z`**                   
* **`[271] fBodyAcc.std...X`**                    
* **`[272] fBodyAcc.std...Y`**                    
* **`[273] fBodyAcc.std...Z`**                    
* **`[274] fBodyAcc.mad...X`**                    
* **`[275] fBodyAcc.mad...Y`**                    
* **`[276] fBodyAcc.mad...Z`**                    
* **`[277] fBodyAcc.max...X`**                    
* **`[278] fBodyAcc.max...Y`**                    
* **`[279] fBodyAcc.max...Z`**                    
* **`[280] fBodyAcc.min...X`**                    
* **`[281] fBodyAcc.min...Y`**                    
* **`[282] fBodyAcc.min...Z`**                    
* **`[283] fBodyAcc.sma..`**                      
* **`[284] fBodyAcc.energy...X`**                 
* **`[285] fBodyAcc.energy...Y`**                 
* **`[286] fBodyAcc.energy...Z`**                 
* **`[287] fBodyAcc.iqr...X`**                    
* **`[288] fBodyAcc.iqr...Y`**                    
* **`[289] fBodyAcc.iqr...Z`**                    
* **`[290] fBodyAcc.entropy...X`**                
* **`[291] fBodyAcc.entropy...Y`**                
* **`[292] fBodyAcc.entropy...Z`**                
* **`[293] fBodyAcc.maxInds.X`**                  
* **`[294] fBodyAcc.maxInds.Y`**                  
* **`[295] fBodyAcc.maxInds.Z`**                  
* **`[296] fBodyAcc.meanFreq...X`**               
* **`[297] fBodyAcc.meanFreq...Y`**               
* **`[298] fBodyAcc.meanFreq...Z`**               
* **`[299] fBodyAcc.skewness...X`**               
* **`[300] fBodyAcc.kurtosis...X`**               
* **`[301] fBodyAcc.skewness...Y`**               
* **`[302] fBodyAcc.kurtosis...Y`**               
* **`[303] fBodyAcc.skewness...Z`**               
* **`[304] fBodyAcc.kurtosis...Z`**               
* **`[305] fBodyAcc.bandsEnergy...1.8`**          
* **`[306] fBodyAcc.bandsEnergy...9.16`**         
* **`[307] fBodyAcc.bandsEnergy...17.24`**        
* **`[308] fBodyAcc.bandsEnergy...25.32`**        
* **`[309] fBodyAcc.bandsEnergy...33.40`**        
* **`[310] fBodyAcc.bandsEnergy...41.48`**        
* **`[311] fBodyAcc.bandsEnergy...49.56`**        
* **`[312] fBodyAcc.bandsEnergy...57.64`**        
* **`[313] fBodyAcc.bandsEnergy...1.16`**         
* **`[314] fBodyAcc.bandsEnergy...17.32`**        
* **`[315] fBodyAcc.bandsEnergy...33.48`**        
* **`[316] fBodyAcc.bandsEnergy...49.64`**        
* **`[317] fBodyAcc.bandsEnergy...1.24`**         
* **`[318] fBodyAcc.bandsEnergy...25.48`**        
* **`[319] fBodyAcc.bandsEnergy...1.8.1`**        
* **`[320] fBodyAcc.bandsEnergy...9.16.1`**       
* **`[321] fBodyAcc.bandsEnergy...17.24.1`**      
* **`[322] fBodyAcc.bandsEnergy...25.32.1`**      
* **`[323] fBodyAcc.bandsEnergy...33.40.1`**      
* **`[324] fBodyAcc.bandsEnergy...41.48.1`**      
* **`[325] fBodyAcc.bandsEnergy...49.56.1`**      
* **`[326] fBodyAcc.bandsEnergy...57.64.1`**      
* **`[327] fBodyAcc.bandsEnergy...1.16.1`**       
* **`[328] fBodyAcc.bandsEnergy...17.32.1`**      
* **`[329] fBodyAcc.bandsEnergy...33.48.1`**      
* **`[330] fBodyAcc.bandsEnergy...49.64.1`**      
* **`[331] fBodyAcc.bandsEnergy...1.24.1`**       
* **`[332] fBodyAcc.bandsEnergy...25.48.1`**      
* **`[333] fBodyAcc.bandsEnergy...1.8.2`**        
* **`[334] fBodyAcc.bandsEnergy...9.16.2`**       
* **`[335] fBodyAcc.bandsEnergy...17.24.2`**      
* **`[336] fBodyAcc.bandsEnergy...25.32.2`**      
* **`[337] fBodyAcc.bandsEnergy...33.40.2`**      
* **`[338] fBodyAcc.bandsEnergy...41.48.2`**      
* **`[339] fBodyAcc.bandsEnergy...49.56.2`**      
* **`[340] fBodyAcc.bandsEnergy...57.64.2`**      
* **`[341] fBodyAcc.bandsEnergy...1.16.2`**       
* **`[342] fBodyAcc.bandsEnergy...17.32.2`**      
* **`[343] fBodyAcc.bandsEnergy...33.48.2`**      
* **`[344] fBodyAcc.bandsEnergy...49.64.2`**      
* **`[345] fBodyAcc.bandsEnergy...1.24.2`**       
* **`[346] fBodyAcc.bandsEnergy...25.48.2`**      
* **`[347] fBodyAccJerk.mean...X`**               
* **`[348] fBodyAccJerk.mean...Y`**               
* **`[349] fBodyAccJerk.mean...Z`**               
* **`[350] fBodyAccJerk.std...X`**                
* **`[351] fBodyAccJerk.std...Y`**                
* **`[352] fBodyAccJerk.std...Z`**                
* **`[353] fBodyAccJerk.mad...X`**                
* **`[354] fBodyAccJerk.mad...Y`**                
* **`[355] fBodyAccJerk.mad...Z`**                
* **`[356] fBodyAccJerk.max...X`**                
* **`[357] fBodyAccJerk.max...Y`**                
* **`[358] fBodyAccJerk.max...Z`**                
* **`[359] fBodyAccJerk.min...X`**                
* **`[360] fBodyAccJerk.min...Y`**                
* **`[361] fBodyAccJerk.min...Z`**                
* **`[362] fBodyAccJerk.sma..`**                  
* **`[363] fBodyAccJerk.energy...X`**             
* **`[364] fBodyAccJerk.energy...Y`**             
* **`[365] fBodyAccJerk.energy...Z`**             
* **`[366] fBodyAccJerk.iqr...X`**                
* **`[367] fBodyAccJerk.iqr...Y`**                
* **`[368] fBodyAccJerk.iqr...Z`**                
* **`[369] fBodyAccJerk.entropy...X`**            
* **`[370] fBodyAccJerk.entropy...Y`**            
* **`[371] fBodyAccJerk.entropy...Z`**            
* **`[372] fBodyAccJerk.maxInds.X`**              
* **`[373] fBodyAccJerk.maxInds.Y`**              
* **`[374] fBodyAccJerk.maxInds.Z`**              
* **`[375] fBodyAccJerk.meanFreq...X`**           
* **`[376] fBodyAccJerk.meanFreq...Y`**           
* **`[377] fBodyAccJerk.meanFreq...Z`**           
* **`[378] fBodyAccJerk.skewness...X`**           
* **`[379] fBodyAccJerk.kurtosis...X`**           
* **`[380] fBodyAccJerk.skewness...Y`**           
* **`[381] fBodyAccJerk.kurtosis...Y`**           
* **`[382] fBodyAccJerk.skewness...Z`**           
* **`[383] fBodyAccJerk.kurtosis...Z`**           
* **`[384] fBodyAccJerk.bandsEnergy...1.8`**      
* **`[385] fBodyAccJerk.bandsEnergy...9.16`**     
* **`[386] fBodyAccJerk.bandsEnergy...17.24`**    
* **`[387] fBodyAccJerk.bandsEnergy...25.32`**    
* **`[388] fBodyAccJerk.bandsEnergy...33.40`**    
* **`[389] fBodyAccJerk.bandsEnergy...41.48`**    
* **`[390] fBodyAccJerk.bandsEnergy...49.56`**    
* **`[391] fBodyAccJerk.bandsEnergy...57.64`**    
* **`[392] fBodyAccJerk.bandsEnergy...1.16`**     
* **`[393] fBodyAccJerk.bandsEnergy...17.32`**    
* **`[394] fBodyAccJerk.bandsEnergy...33.48`**    
* **`[395] fBodyAccJerk.bandsEnergy...49.64`**    
* **`[396] fBodyAccJerk.bandsEnergy...1.24`**     
* **`[397] fBodyAccJerk.bandsEnergy...25.48`**    
* **`[398] fBodyAccJerk.bandsEnergy...1.8.1`**    
* **`[399] fBodyAccJerk.bandsEnergy...9.16.1`**   
* **`[400] fBodyAccJerk.bandsEnergy...17.24.1`**  
* **`[401] fBodyAccJerk.bandsEnergy...25.32.1`**  
* **`[402] fBodyAccJerk.bandsEnergy...33.40.1`**  
* **`[403] fBodyAccJerk.bandsEnergy...41.48.1`**  
* **`[404] fBodyAccJerk.bandsEnergy...49.56.1`**  
* **`[405] fBodyAccJerk.bandsEnergy...57.64.1`**  
* **`[406] fBodyAccJerk.bandsEnergy...1.16.1`**   
* **`[407] fBodyAccJerk.bandsEnergy...17.32.1`**  
* **`[408] fBodyAccJerk.bandsEnergy...33.48.1`**  
* **`[409] fBodyAccJerk.bandsEnergy...49.64.1`**  
* **`[410] fBodyAccJerk.bandsEnergy...1.24.1`**   
* **`[411] fBodyAccJerk.bandsEnergy...25.48.1`**  
* **`[412] fBodyAccJerk.bandsEnergy...1.8.2`**    
* **`[413] fBodyAccJerk.bandsEnergy...9.16.2`**   
* **`[414] fBodyAccJerk.bandsEnergy...17.24.2`**  
* **`[415] fBodyAccJerk.bandsEnergy...25.32.2`**  
* **`[416] fBodyAccJerk.bandsEnergy...33.40.2`**  
* **`[417] fBodyAccJerk.bandsEnergy...41.48.2`**  
* **`[418] fBodyAccJerk.bandsEnergy...49.56.2`**  
* **`[419] fBodyAccJerk.bandsEnergy...57.64.2`**  
* **`[420] fBodyAccJerk.bandsEnergy...1.16.2`**   
* **`[421] fBodyAccJerk.bandsEnergy...17.32.2`**  
* **`[422] fBodyAccJerk.bandsEnergy...33.48.2`**  
* **`[423] fBodyAccJerk.bandsEnergy...49.64.2`**  
* **`[424] fBodyAccJerk.bandsEnergy...1.24.2`**   
* **`[425] fBodyAccJerk.bandsEnergy...25.48.2`**  
* **`[426] fBodyGyro.mean...X`**                  
* **`[427] fBodyGyro.mean...Y`**                  
* **`[428] fBodyGyro.mean...Z`**                  
* **`[429] fBodyGyro.std...X`**                   
* **`[430] fBodyGyro.std...Y`**                   
* **`[431] fBodyGyro.std...Z`**                   
* **`[432] fBodyGyro.mad...X`**                   
* **`[433] fBodyGyro.mad...Y`**                   
* **`[434] fBodyGyro.mad...Z`**                   
* **`[435] fBodyGyro.max...X`**                   
* **`[436] fBodyGyro.max...Y`**                   
* **`[437] fBodyGyro.max...Z`**                   
* **`[438] fBodyGyro.min...X`**                   
* **`[439] fBodyGyro.min...Y`**                   
* **`[440] fBodyGyro.min...Z`**                   
* **`[441] fBodyGyro.sma..`**                     
* **`[442] fBodyGyro.energy...X`**                
* **`[443] fBodyGyro.energy...Y`**                
* **`[444] fBodyGyro.energy...Z`**                
* **`[445] fBodyGyro.iqr...X`**                   
* **`[446] fBodyGyro.iqr...Y`**                   
* **`[447] fBodyGyro.iqr...Z`**                   
* **`[448] fBodyGyro.entropy...X`**               
* **`[449] fBodyGyro.entropy...Y`**               
* **`[450] fBodyGyro.entropy...Z`**               
* **`[451] fBodyGyro.maxInds.X`**                 
* **`[452] fBodyGyro.maxInds.Y`**                 
* **`[453] fBodyGyro.maxInds.Z`**                 
* **`[454] fBodyGyro.meanFreq...X`**              
* **`[455] fBodyGyro.meanFreq...Y`**              
* **`[456] fBodyGyro.meanFreq...Z`**              
* **`[457] fBodyGyro.skewness...X`**              
* **`[458] fBodyGyro.kurtosis...X`**              
* **`[459] fBodyGyro.skewness...Y`**              
* **`[460] fBodyGyro.kurtosis...Y`**              
* **`[461] fBodyGyro.skewness...Z`**              
* **`[462] fBodyGyro.kurtosis...Z`**              
* **`[463] fBodyGyro.bandsEnergy...1.8`**         
* **`[464] fBodyGyro.bandsEnergy...9.16`**        
* **`[465] fBodyGyro.bandsEnergy...17.24`**       
* **`[466] fBodyGyro.bandsEnergy...25.32`**       
* **`[467] fBodyGyro.bandsEnergy...33.40`**       
* **`[468] fBodyGyro.bandsEnergy...41.48`**       
* **`[469] fBodyGyro.bandsEnergy...49.56`**       
* **`[470] fBodyGyro.bandsEnergy...57.64`**       
* **`[471] fBodyGyro.bandsEnergy...1.16`**        
* **`[472] fBodyGyro.bandsEnergy...17.32`**       
* **`[473] fBodyGyro.bandsEnergy...33.48`**       
* **`[474] fBodyGyro.bandsEnergy...49.64`**       
* **`[475] fBodyGyro.bandsEnergy...1.24`**        
* **`[476] fBodyGyro.bandsEnergy...25.48`**       
* **`[477] fBodyGyro.bandsEnergy...1.8.1`**       
* **`[478] fBodyGyro.bandsEnergy...9.16.1`**      
* **`[479] fBodyGyro.bandsEnergy...17.24.1`**     
* **`[480] fBodyGyro.bandsEnergy...25.32.1`**     
* **`[481] fBodyGyro.bandsEnergy...33.40.1`**     
* **`[482] fBodyGyro.bandsEnergy...41.48.1`**     
* **`[483] fBodyGyro.bandsEnergy...49.56.1`**     
* **`[484] fBodyGyro.bandsEnergy...57.64.1`**     
* **`[485] fBodyGyro.bandsEnergy...1.16.1`**      
* **`[486] fBodyGyro.bandsEnergy...17.32.1`**     
* **`[487] fBodyGyro.bandsEnergy...33.48.1`**     
* **`[488] fBodyGyro.bandsEnergy...49.64.1`**     
* **`[489] fBodyGyro.bandsEnergy...1.24.1`**      
* **`[490] fBodyGyro.bandsEnergy...25.48.1`**     
* **`[491] fBodyGyro.bandsEnergy...1.8.2`**       
* **`[492] fBodyGyro.bandsEnergy...9.16.2`**      
* **`[493] fBodyGyro.bandsEnergy...17.24.2`**     
* **`[494] fBodyGyro.bandsEnergy...25.32.2`**     
* **`[495] fBodyGyro.bandsEnergy...33.40.2`**     
* **`[496] fBodyGyro.bandsEnergy...41.48.2`**     
* **`[497] fBodyGyro.bandsEnergy...49.56.2`**     
* **`[498] fBodyGyro.bandsEnergy...57.64.2`**     
* **`[499] fBodyGyro.bandsEnergy...1.16.2`**      
* **`[500] fBodyGyro.bandsEnergy...17.32.2`**     
* **`[501] fBodyGyro.bandsEnergy...33.48.2`**     
* **`[502] fBodyGyro.bandsEnergy...49.64.2`**     
* **`[503] fBodyGyro.bandsEnergy...1.24.2`**      
* **`[504] fBodyGyro.bandsEnergy...25.48.2`**     
* **`[505] fBodyAccMag.mean..`**                  
* **`[506] fBodyAccMag.std..`**                   
* **`[507] fBodyAccMag.mad..`**                   
* **`[508] fBodyAccMag.max..`**                   
* **`[509] fBodyAccMag.min..`**                   
* **`[510] fBodyAccMag.sma..`**                   
* **`[511] fBodyAccMag.energy..`**                
* **`[512] fBodyAccMag.iqr..`**                   
* **`[513] fBodyAccMag.entropy..`**               
* **`[514] fBodyAccMag.maxInds`**                 
* **`[515] fBodyAccMag.meanFreq..`**              
* **`[516] fBodyAccMag.skewness..`**              
* **`[517] fBodyAccMag.kurtosis..`**              
* **`[518] fBodyAccJerkMag.mean..`**              
* **`[519] fBodyAccJerkMag.std..`**               
* **`[520] fBodyAccJerkMag.mad..`**               
* **`[521] fBodyAccJerkMag.max..`**               
* **`[522] fBodyAccJerkMag.min..`**               
* **`[523] fBodyAccJerkMag.sma..`**               
* **`[524] fBodyAccJerkMag.energy..`**            
* **`[525] fBodyAccJerkMag.iqr..`**               
* **`[526] fBodyAccJerkMag.entropy..`**           
* **`[527] fBodyAccJerkMag.maxInds`**             
* **`[528] fBodyAccJerkMag.meanFreq..`**          
* **`[529] fBodyAccJerkMag.skewness..`**          
* **`[530] fBodyAccJerkMag.kurtosis..`**          
* **`[531] fBodyGyroMag.mean..`**                 
* **`[532] fBodyGyroMag.std..`**                  
* **`[533] fBodyGyroMag.mad..`**                  
* **`[534] fBodyGyroMag.max..`**                  
* **`[535] fBodyGyroMag.min..`**                  
* **`[536] fBodyGyroMag.sma..`**                  
* **`[537] fBodyGyroMag.energy..`**               
* **`[538] fBodyGyroMag.iqr..`**                  
* **`[539] fBodyGyroMag.entropy..`**              
* **`[540] fBodyGyroMag.maxInds`**                
* **`[541] fBodyGyroMag.meanFreq..`**             
* **`[542] fBodyGyroMag.skewness..`**             
* **`[543] fBodyGyroMag.kurtosis..`**             
* **`[544] fBodyGyroJerkMag.mean..`**             
* **`[545] fBodyGyroJerkMag.std..`**              
* **`[546] fBodyGyroJerkMag.mad..`**              
* **`[547] fBodyGyroJerkMag.max..`**              
* **`[548] fBodyGyroJerkMag.min..`**              
* **`[549] fBodyGyroJerkMag.sma..`**              
* **`[550] fBodyGyroJerkMag.energy..`**           
* **`[551] fBodyGyroJerkMag.iqr..`**              
* **`[552] fBodyGyroJerkMag.entropy..`**          
* **`[553] fBodyGyroJerkMag.maxInds`**            
* **`[554] fBodyGyroJerkMag.meanFreq..`**         
* **`[555] fBodyGyroJerkMag.skewness..`**         
* **`[556] fBodyGyroJerkMag.kurtosis..`**         
* **`[557] angle.tBodyAccMean.gravity.`**         
* **`[558] angle.tBodyAccJerkMean..gravityMean.`**                     
* **`[559] angle.tBodyGyroMean.gravityMean.`**    
* **`[560] angle.tBodyGyroJerkMean.gravityMean.`**                     
* **`[561] angle.X.gravityMean.`**                
* **`[562] angle.Y.gravityMean.`**                
* **`[563] angle.Z.gravityMean.`**                

# Getting and Cleaning data Project : UCI HAR Dataset

### General Information
> "_The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected._"

One of the most exciting areas in all of data science right now is wearable computing - see for example <a href="http://www.insideactivitytracking.com/data-science-activity-tracking-and-the-battle-for-the-worlds-top-sports-brand/">this article</a>. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone.

A full description is available at the site where the data was obtained: <a href="http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones">HERE</a>

Here are the data for the project:<a href="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip">HERE</a>

`⚠️ ALERT !! Be sure to check out the README.txt and features_info.txt, included with the dataset.`

### Project Requirements
You should create one R script called **run_analysis.R** that does the following.
- Merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement.
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive variable names.
- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

<br/>

### _run_analysis.R_ explaination
#### Download and unzip the file to your working directory
You can do this either by the script given below or download directly via the browser. Be sure to check the files ***README.txt*** and ***features_info.txt***.
```R
file_link <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
TOTAL_PATH <- file.path(getwd(),"zip_directory_UCI")

if(  !dir.exists(TOTAL_PATH)  ){
        # WARNING: If you are on MAC, you may need to set method="curl"
        download.file(file_link, "UCI HAR Dataset.zip")
        (unzipped_file_list <- unzip("UCI HAR Dataset.zip", exdir="zip_directory_UCI"))
}else{
        print("Directory/File(s) already exist(s)...")
}
```

<br/>

#### Read the relevant files to system memory
The script below reads the files to system memory
```R
library(data.table)

features <- fread("zip_directory_UCI//UCI HAR Dataset//features.txt", data.table = FALSE, na.strings=c("",NA))
activity_labels <- fread("zip_directory_UCI//UCI HAR Dataset//activity_labels.txt", data.table = FALSE, na.strings=c("",NA))

subject_train <- fread("zip_directory_UCI//UCI HAR Dataset//train//subject_train.txt", data.table = FALSE, na.strings=c("",NA))
X_train <- fread("zip_directory_UCI//UCI HAR Dataset//train//X_train.txt", data.table = FALSE, na.strings=c("",NA))
y_train <- fread("zip_directory_UCI//UCI HAR Dataset//train//y_train.txt", data.table = FALSE, na.strings=c("",NA))

subject_test <- fread("zip_directory_UCI//UCI HAR Dataset//test//subject_test.txt", data.table = FALSE, na.strings=c("",NA))
X_test <- fread("zip_directory_UCI//UCI HAR Dataset//test//X_test.txt", data.table = FALSE, na.strings=c("",NA))
y_test <- fread("zip_directory_UCI//UCI HAR Dataset//test//y_test.txt", data.table = FALSE, na.strings=c("",NA))
```

<br/>

#### TASK-1: Combine the training and test data to 1 dataset
The below script combines the training and test datasets to one dataset called ***Train_Test_combo*** and also checks for any duplicates or NAs.
```R
# Combining data
train_combined <- cbind( subject_train$V1, y_train$V1, X_train)
colnames(train_combined)[1:2] <- c("subject_id","activity")
rm(subject_train, y_train, X_train)

test_combined <- cbind( subject_test$V1, y_test$V1, X_test)
colnames(test_combined)[1:2] <- c("subject_id","activity")
rm(subject_test, y_test, X_test)

# Combining Train and Test, remove duplicates if they exist
library(dplyr)
Train_Test_combo <- rbind(train_combined, test_combined) %>% distinct()

# checking for NAs, found none
sum(is.na(Train_Test_combo))
rm(train_combined, test_combined)
```

A part of the dataset structure is shown below for better understanding.
```R
> str(Train_Test_combo)
'data.frame':	10299 obs. of  563 variables:
 $ subject_id: int  1 1 1 1 1 1 1 1 1 1 ...
 $ activity  : int  5 5 5 5 5 5 5 5 5 5 ...
 $ V1        : num  0.289 0.278 0.28 0.279 0.277 ...
 $ V2        : num  -0.0203 -0.0164 -0.0195 -0.0262 -0.0166 ...
 $ V3        : num  -0.133 -0.124 -0.113 -0.123 -0.115 ...
 $ V4        : num  -0.995 -0.998 -0.995 -0.996 -0.998 ...
 $ V5        : num  -0.983 -0.975 -0.967 -0.983 -0.981 ...
 $ V6        : num  -0.914 -0.96 -0.979 -0.991 -0.99 ...
```

<br/>

#### TASK-2: Extract only the measurements on the mean and standard deviation for each measurement
Since ***subject_id*** and ***activity*** become the first 2 columns, we have to add 2 to grep results to match to the correct column numbers. Since meanFreq() is a weighted mean, calculated differently and also nothing has been said about it ( to include or not ) in the question, I decided to drop it from the grep() results.
```R
library(data.table)
features <- fread("zip_directory_UCI//UCI HAR Dataset//features.txt", data.table = FALSE, na.strings=c("",NA))

required_columns <- grep("mean\\(\\)|std\\(\\)", features$V2)

Mean_Std <- Train_Test_combo[,required_columns + 2]
# 2 is added because, the first 2 columns (subject_id,activity) have shifted all column numbers by 2
colnames(Mean_Std) <- features$V2[required_columns]

# I have chosen mean() and std() columns only, because meanFreq() is a weighted mean, calculated differently.
# Quoted from features_info.txt:- Weighted average of the frequency components to obtain a mean frequency
rm(required_columns)
```

A part of the Mean_Std structure is shown below for better understanding.
```R
> str(Mean_Std)
'data.frame':	10299 obs. of  66 variables:
 $ tBodyAcc-mean()-X          : num  0.289 0.278 0.28 0.279 0.277 ...
 $ tBodyAcc-mean()-Y          : num  -0.0203 -0.0164 -0.0195 -0.0262 -0.0166 ...
 $ tBodyAcc-mean()-Z          : num  -0.133 -0.124 -0.113 -0.123 -0.115 ...
 $ tBodyAcc-std()-X           : num  -0.995 -0.998 -0.995 -0.996 -0.998 ...
 $ tBodyAcc-std()-Y           : num  -0.983 -0.975 -0.967 -0.983 -0.981 ...
 $ tBodyAcc-std()-Z           : num  -0.914 -0.96 -0.979 -0.991 -0.99 ...
 $ tGravityAcc-mean()-X       : num  0.963 0.967 0.967 0.968 0.968 ...
 $ tGravityAcc-mean()-Y       : num  -0.141 -0.142 -0.142 -0.144 -0.149 ...
```

<br/>

#### TASK-3: Use descriptive activity names to name the activities in the data set
The activity names viz. ( _WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING & LAYING_ ) are represented by numbers from 1 to 6. The below script replaces the numbers with their respective activity names and converts them into factors.
```R
activity_labels <- fread("zip_directory_UCI//UCI HAR Dataset//activity_labels.txt", data.table = FALSE, na.strings=c("",NA))
Train_Test_combo$activity <- factor(activity_labels$V2[Train_Test_combo$activity], levels=activity_labels$V2)
```

<br/>

#### TASK-4: Appropriately label the data set with descriptive variable names.
```R
# The descriptive variable names are located in features$V2 column (or features.txt)
# In my opinion, these names are descriptive enough, but they are also syntactically invalid.
# make.names() creates syntactically valid names

features$V2 <- make.names(names=features$V2, unique=TRUE, allow_ = TRUE)
features$V2 <- gsub("BodyBody", "Body", features$V2)
colnames(Train_Test_combo)[3:563] <- features$V2
```

A part of the Train_Test_combo dataset is shown below
```R
> Train_Test_combo[1:5,1:7]
  subject_id activity tBodyAcc.mean...X tBodyAcc.mean...Y tBodyAcc.mean...Z tBodyAcc.std...X tBodyAcc.std...Y
1          1 STANDING         0.2885845       -0.02029417        -0.1329051       -0.9952786       -0.9831106
2          1 STANDING         0.2784188       -0.01641057        -0.1235202       -0.9982453       -0.9753002
3          1 STANDING         0.2796531       -0.01946716        -0.1134617       -0.9953796       -0.9671870
4          1 STANDING         0.2791739       -0.02620065        -0.1232826       -0.9960915       -0.9834027
5          1 STANDING         0.2766288       -0.01656965        -0.1153619       -0.9981386       -0.9808173
> 
```


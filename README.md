# Getting and Cleaning data Project : UCI HAR Dataset

### General Information
> "_The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected._"

One of the most exciting areas in all of data science right now is wearable computing - see for example <a href="http://www.insideactivitytracking.com/data-science-activity-tracking-and-the-battle-for-the-worlds-top-sports-brand/">this article</a>. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone.

A full description is available at the site where the data was obtained: <a href="http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones">HERE</a>

Here are the data for the project:<a href="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip">HERE</a>

⚠️ **ALERT** !! Be sure to check out the ***README.txt*** and ***features_info.txt***, included with the dataset.

### Project Requirements
You should create one R script called **run_analysis.R** that does the following.
- Merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement.
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive variable names.
- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

### run_analysis.R explaination
#### 1. Download and unzip the file to your working directory
You can do this either by the script given below or download directly via the browser. Be sure to check the files *README.txt* and *features_info.txt*.
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

#### 2. Read the relevant files to system memory
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

#### 3. TASK-1: Combine the training and test data to 1 dataset
The below script combines the training and test datasets to 1 dataset called Train_Test_combo and also checks for any duplicates or NAs.
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

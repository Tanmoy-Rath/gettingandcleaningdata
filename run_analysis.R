
#####################################################################################


# Question 1: Merge the training and the test sets to create one data set.

# Reading data
library(data.table)

subject_train <- fread("getdata_projectfiles_UCI HAR Dataset//UCI HAR Dataset//train//subject_train.txt", data.table = FALSE, na.strings=c("",NA))
X_train <- fread("getdata_projectfiles_UCI HAR Dataset//UCI HAR Dataset//train//X_train.txt", data.table = FALSE, na.strings=c("",NA))
y_train <- fread("getdata_projectfiles_UCI HAR Dataset//UCI HAR Dataset//train//y_train.txt", data.table = FALSE, na.strings=c("",NA))

subject_test <- fread("getdata_projectfiles_UCI HAR Dataset//UCI HAR Dataset//test//subject_test.txt", data.table = FALSE, na.strings=c("",NA))
X_test <- fread("getdata_projectfiles_UCI HAR Dataset//UCI HAR Dataset//test//X_test.txt", data.table = FALSE, na.strings=c("",NA))
y_test <- fread("getdata_projectfiles_UCI HAR Dataset//UCI HAR Dataset//test//y_test.txt", data.table = FALSE, na.strings=c("",NA))

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
rm(train_combined, test_combined)


#####################################################################################


# Question 2: Extract only the measurements on the mean and standard deviation for each measurement.

features <- fread("getdata_projectfiles_UCI HAR Dataset//UCI HAR Dataset//features.txt", data.table = FALSE, na.strings=c("",NA))

required_columns <- grep("mean\\(\\)|std\\(\\)", features$V2) + 2
# 2 is added because, the first 2 columns (subject_id,activity) have shifted all column numbers by 2

Mean_Std <- Train_Test_combo[,required_columns]
# I have chosen mean() and std() columns only, because meanFreq() is a weighted mean.
# meanFreq(): Weighted average of the frequency components to obtain a mean frequency
rm(required_columns)


#####################################################################################


# Question 3: Uses descriptive activity names to name the activities in the data set

activity_labels <- fread("getdata_projectfiles_UCI HAR Dataset//UCI HAR Dataset//activity_labels.txt", data.table = FALSE, na.strings=c("",NA))
Train_Test_combo$activity <- factor(activity_labels$V2[Train_Test_combo$activity], levels=activity_labels$V2)


#####################################################################################


# Question 4: Appropriately label the data set with descriptive variable names.

# The descriptive variable names are located in features$V2 column (or features.txt)
# In my opinion, these names are descriptive enough, but they are also syntactically invalid.
# make.names() creates syntactically valid names
features$V2 <- make.names(names=features$V2, unique=TRUE, allow_ = TRUE)
features$V2 <- gsub("BodyBody", "Body", features$V2)
colnames(Train_Test_combo)[3:563] <- features$V2


#####################################################################################


# Question 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
Tidy_data <- Train_Test_combo %>% group_by(subject_id, activity) %>% summarise_all(mean)

write.table(Tidy_data, "Tidydata.txt", row.names=FALSE, quote=FALSE)



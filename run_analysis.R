#Script "run_analysis.R" written for coursera "Getting and Cleaning Data" 
#course project

#1. Set working directory (The user needs to reset to their own working directory)
setwd("Your directory path here")

#2. Download and unzip the data archive from the designated web site
temp <- tempfile()
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,temp)
unzip(temp, list=FALSE, exdir=".")
unlink(temp)
datedownloaded <- date()
datedownloaded

#3. Read the 8 data sets into R containing feature descriptions,
#activity labels, training raw data, and test raw data. The training and 
#test data each have 3 files (X matrix, y vector, and subject vector).

#Notes: the downloaded directory "UCI HAR Dataset" contains the activity data
#The features and activity datasets are at the top level of the directory
#The main directory has two subdirectories, "train" and "test"
#All datasets are text files delimited by blanks with no header row
features <- read.table("./UCI HAR Dataset/features.txt")
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

#4. Appropriately label the data set with descriptive variable names

#4a. Obtain descriptive names for each X variable from the features object
colnames(features) <- c("var_number", "var_name")
ind1 <- grep("mean", features$var_name)
ind2 <- grep("std", features$var_name)
ind <- sort(c(ind1, ind2)) #This is the index used to extract features from X and y datasets
sub_features <- features[ind,] #There are 79 variables to extract
unique(sub_features$var_name) #Check to see if the variable names unique (they are)
#4b. Add descriptive names to X train variables
colnames(X_train) <- features$var_name
#4c. Add descriptive names to X test variables
colnames(X_test) <- features$var_name

#5. Extract only the measurements on the mean and standard deviation for each measurement
#5a. Extract variables for the X train matrix and store in a subset.
X_train_sub <- X_train[, ind]
#5b. Extract variables for the X test matrix and store in a subset.
X_test_sub <- X_test[, ind]

#6.  Use descriptive activity names to name the activities in the data set

#6a. Add descriptive names to the activities in the y train vector
colnames(y_train) <- "activity_number"
y_train$activity_name <- "activity"
y_train$activity_name[y_train$activity_number == 1] <- "WALKING"
y_train$activity_name[y_train$activity_number == 2] <- "WALKING_UPSTAIRS"
y_train$activity_name[y_train$activity_number == 3] <- "WALKING_DOWNSTAIRS"
y_train$activity_name[y_train$activity_number == 4] <- "SITTING"
y_train$activity_name[y_train$activity_number == 5] <- "STANDING"
y_train$activity_name[y_train$activity_number == 6] <- "LAYING"
#6b. Add descriptive names to the activities in the y test vector
colnames(y_test) <- "activity_number"
y_test$activity_name <- "activity"
y_test$activity_name[y_test$activity_number == 1] <- "WALKING"
y_test$activity_name[y_test$activity_number == 2] <- "WALKING_UPSTAIRS"
y_test$activity_name[y_test$activity_number == 3] <- "WALKING_DOWNSTAIRS"
y_test$activity_name[y_test$activity_number == 4] <- "SITTING"
y_test$activity_name[y_test$activity_number == 5] <- "STANDING"
y_test$activity_name[y_test$activity_number == 6] <- "LAYING"

#7. Add descriptive name to the subject vectors
colnames(subject_train) <- "subject"
colnames(subject_test) <- "subject"

#8.  Merge the training and test sets into one data set

#8a. For the training data, append the subject and activity_name (y) vectors
#to the subset of the feature (X) vectors, using the cbind function.
#Result should have 7352 rows and 82 columns
Xysubj_train <- cbind(X_train_sub, subject_train, y_train)
#8b. Perform the same operation for the test data
#Result should have 2947 rows and 82 columns
Xysubj_test <- cbind(X_test_sub, subject_test, y_test)
#8c. Now merge the training and test dataframes, using the rbind function
#Result should have 10299 rows and 82 columns
all_activity <- rbind(Xysubj_train, Xysubj_test)

#9.  Create a second, independent tidy data set with the average of each 
#variable for each activity and each subject
#9a. Access the data.table package
install.packages("data.table")
library("data.table")
#9b. Convert the data frame obtained in #8 to a data table
DT <- data.table(all_activity)
#9c. Drop the extra column with activity numbers
DT[, "activity_number" := NULL]
#9d. Calculate the mean of each variable by combination of subject and activity name
DT2 <- DT[, lapply(.SD, mean), by = c("subject", "activity_name")]

#10. Finally write out the data table for upload as required by the assignment
write.table(DT2, file="result.txt", row.names=FALSE)
#This file may be easily examined using the R command below.
result <- read.table("result.txt", header=TRUE)

getcleandata-course-project
===========================

This README file contains instructions for running the "run_analysis.R" script
written for coursera.org "Getting and Cleaning Data" course project.

Note that the steps of the analysis are not run in the same order as 
presented in the assignment. There are also additional steps defined to
provide a complete set of instructions to the user.
The steps were done in the following order to process the data in the most 
efficient manner.

1. Set working directory. The user needs to set their working directory
   to a path he/she finds most convenient.
2. Download and unzip the UCI HAR data archive from the designated web site.
3. Read the 8 data sets into R containing feature descriptions,
   activity labels, training raw data, and test raw data. The training and 
   test data each have 3 files (X matrix, y vector, and subject vector).
   Notes: (a) The downloaded directory "UCI HAR Dataset" contains the activity data.
          (b) The features and activity datasets are at the top level of the directory.
          (c) The main directory has two subdirectories, "train" and "test" that contain measurements.
          (d) All datasets are text files delimited by blanks with no header row.
4. Appropriately label the data set with descriptive variable names.
   a. Obtain descriptive names for each X variable from the "features" R object.			
   b. Add descriptive names to X train variables.
   c. Add descriptive names to X test variables.   
5. Extract only the measurements on the mean and standard deviation for each measurement.
   Note: This instruction was interpreted as "extract the variables for which the variable
   name contained the strings, "mean" or "std". This method resulted in a set of features
   for which mean and standard deviations were calculated, either on the actual measurements
   or derived measurements.
   a. Extract variables for the X train matrix and store in a subset.
   b. Extract variables for the X test matrix and store in a subset.
6. Use descriptive activity names to name the activities in the data.
   a. Add descriptive names to the activities in the y train vector.
   b. Add descriptive names to the activities in the y test vector.
7. Add descriptive name to the subject vectors.
8. Merge the training and test sets into one data set.
   a. For the training data, append the subject and activity_name (y) vectors
      to the subset of the feature (X) vectors, using the cbind function.
      Result should have 7352 rows and 82 columns.
   b. Perform the same operation for the test data.
      Result should have 2947 rows and 82 columns.
   c. Now merge the training and test dataframes, using the rbind function.
      Result should have 10299 rows and 82 columns.
9. Create a second, independent tidy data set with the average of each 
   variable for each activity and each subject.
   a. Access the "data.table" package.
   b. Convert the data frame obtained in #8 to a data table.
   c. Drop the extra column with activity numbers.
   d. Calculate the mean of each variable by combination of subject and activity name.
   e. Result should have 180 rows and 81 columns. It is a tidy data set because: 
      (1) Each column contains a single variable (means of the measurement variables).
      (2) Each row contains a single observation (subject x activity name).
      (3) Each type of observational unit (set of smart phone measurements) is in a table.
10.Finally write out the data table for upload as required by the assignment. This file may 
   be easily examined running the R command "result <- read.table("result.txt", header=TRUE)"

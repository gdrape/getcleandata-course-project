#Codebook for course project - Getting and Cleaning Data

##Acknowledgement

Portions of the data description were obtained from the University of California - Irvine Machine Learning Repository website: 
(http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)  

##Study Design

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed 
six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) 
on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity 
at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly 
partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

##Raw Data

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using 
a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the 
acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another 
low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals 
(tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean 
norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, 
fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated from these signals are: 
* mean(): Mean value
* std(): Standard deviation
* mad(): Median absolute deviation 
* max(): Largest value in array
* min(): Smallest value in array
* sma(): Signal magnitude area
* energy(): Energy measure. Sum of the squares divided by the number of values. 
* iqr(): Interquartile range 
* entropy(): Signal entropy
* arCoeff(): Autorregresion coefficients with Burg order equal to 4
* correlation(): correlation coefficient between two signals
* maxInds(): index of the frequency component with largest magnitude
* meanFreq(): Weighted average of the frequency components to obtain a mean frequency
* skewness(): skewness of the frequency domain signal 
* kurtosis(): kurtosis of the frequency domain signal 
* bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
* angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable. 

The raw data were organized into the following text files:
* X_train.txt - contains feature data for the training data set
* y_train.txt - contains activity labels for the training data set
* subject_train.txt - contains subject identification for the training data set
* X_test.txt - contains feature data for the test data set
* y_test.txt - contains activity labels for the test data set
* subject_test.txt - contains subject identification for the test data set
* features.txt - contains the list of feature numbers and corresponding feature names
* activity_labels.txt - contains the list of activity numbers and corresponding activity names

##Processed Data

In this project, the raw data was cleaned and reorganized as follows:
* The training and test data sets were merged.
* A subset of the features was created in which only the variables that were created by taking the mean or standard deviation were retained. 
* All variables were given descriptive names. 
* The activity_label variable was transformed to contain the name of the activity, i.e. WALKING, WALKING_DOWNSTAIRS, etc. 
* The retained features were averaged by subject and activity and written out into a tidy data set (results.txt) with a "wide" format. 

##Description of variables in the processed data set (81 variables)

* subject:  Integer; number of the subject in the experiment
* activity_name:  Character; Name of the activity performed by the subject
* tBodyAcc-mean()-X:  Numeric; Average body linear acceleration mean in the X direction (time domain) 
* tBodyAcc-mean()-Y:  Numeric; Average body linear acceleration mean in the Y direction (time domain)		
* tBodyAcc-mean()-Z:  Numeric; Average body linear acceleration mean in the Z direction  (time domain)
* tBodyAcc-std()-X:  Numeric; Average body linear acceleration std dev in the X direction  (time domain)
* tBodyAcc-std()-Y:  Numeric; Average body linear acceleration std dev in the Y direction  (time domain)
* tBodyAcc-std()-Z:  Numeric: Average body linear acceleration std dev in the Z direction  (time domain)
* tGravityAcc-mean()-X:  Numeric; Average gravity linear acceleration mean in the X direction  (time domain)
* tGravityAcc-mean()-Y:  Numeric; Average gravity linear acceleration mean in the Y direction  (time domain)
* tGravityAcc-mean()-Z:  Numeric; Average gravity linear acceleration mean in the Z direction  (time domain)
* tGravityAcc-std()-X:  Numeric; Average gravity linear acceleration std dev in the X direction  (time domain)
* tGravityAcc-std()-Y:  Numeric; Average gravity linear acceleration std dev in the Y direction  (time domain)
* tGravityAcc-std()-Z:  Numeric; Average gravity linear acceleration std dev in the Z direction  (time domain)
* tBodyAccJerk-mean()-X:  Numeric; Average body jerk linear acceleration mean in the X direction  (time domain)
* tBodyAccJerk-mean()-Y:  Numeric; Average body jerk linear acceleration mean in the Y direction  (time domain)
* tBodyAccJerk-mean()-Z:  Numeric; Average body jerk linear acceleration mean in the Z direction  (time domain)
* tBodyAccJerk-std()-X:  Numeric; Average body jerk linear acceleration std dev in the X direction  (time domain)
* tBodyAccJerk-std()-Y:  Numeric; Average body jerk linear acceleration std dev in the Y direction  (time domain)
* tBodyAccJerk-std()-Z:  Numeric; Average body jerk linear acceleration std dev in the Z direction  (time domain)
* tBodyGyro-mean()-X:  Numeric; Average body gyroscopic frequency mean in the X direction (time domain)
* tBodyGyro-mean()-Y:  Numeric; Average body gyroscopic frequency mean in the Y direction (time domain)
* tBodyGyro-mean()-Z: Numeric; Average body gyroscopic frequency mean in the Z direction (time domain)
* tBodyGyro-std()-X:  Numeric; Average body gyroscopic frequency std dev in the X direction (time domain)
* tBodyGyro-std()-Y:  Numeric; Average body gyroscopic frequency std dev in the Y direction (time domain)
* tBodyGyro-std()-Z:  Numeric; Average body gyroscopic frequency std dev in the Z direction (time domain)
* tBodyGyroJerk-mean()-X:  Numeric; Average body jerk gyroscopic frequency mean in the X direction (time domain)
* tBodyGyroJerk-mean()-Y:  Numeric; Average body jerk gyroscopic frequency mean in the Y direction (time domain)
* tBodyGyroJerk-mean()-Z:  Numeric; Average body jerk gyroscopic frequency mean in the Z direction (time domain)
* tBodyGyroJerk-std()-X:  Numeric; Average body jerk gyroscopic frequency std dev in the X direction (time domain)
* tBodyGyroJerk-std()-Y:  Numeric; Average body jerk gyroscopic frequency std dev in the Y direction (time domain)
* tBodyGyroJerk-std()-Z:  Numeric; Average body jerk gyroscopic frequency std dev in the Z direction (time domain)
* tBodyAccMag-mean():  Numeric; Average body acceleration magnitude mean (time domain)
* tBodyAccMag-std():  Numeric; Average body acceleration magnitude std dev (time domain)
* tGravityAccMag-mean():  Numeric; Average gravity acceleration magnitude mean (time domain)
* tGravityAccMag-std():  Numeric; Average gravity acceleration magnitude std dev (time domain)
* tBodyAccJerkMag-mean():  Numeric; Average body jerk acceleration magnitude mean (time domain)
* tBodyAccJerkMag-std():  Numeric; Average body jerk acceleration magnitude std dev (time domain)
* tBodyGyroMag-mean():  Numeric; Average body gyroscopic magnitude mean (time domain)
* tBodyGyroMag-std():  Numeric; Average body gyroscopic magnitude std dev (time domain)
* tBodyGyroJerkMag-mean():  Numeric; Average body jerk gyroscopic magnitude mean (time domain)
* tBodyGyroJerkMag-std():  Numeric; Average body jerk gyroscopic magnitude std dev (time domain)
* fBodyAcc-mean()-X:  Numeric; Average body linear acceleration mean in the X direction (frequency domain)
* fBodyAcc-mean()-Y:  Numeric; Average body linear acceleration mean in the Y direction (frequency domain)
* fBodyAcc-mean()-Z:  Numeric; Average body linear acceleration mean in the Z direction (frequency domain)
* fBodyAcc-std()-X:  Numeric; Average body linear acceleration std dev in the X direction (frequency domain)
* fBodyAcc-std()-Y:  Numeric; Average body linear acceleration std dev in the Y direction (frequency domain)
* fBodyAcc-std()-Z:  Numeric; Average body linear acceleration std dev in the Z direction (frequency domain)
* fBodyAcc-meanFreq()-X:  Numeric; Average body linear acceleration mean frequency in the X direction (frequency domain)
* fBodyAcc-meanFreq()-Y:  Numeric; Average body linear acceleration mean frequency in the Y direction (frequency domain)
* fBodyAcc-meanFreq()-Z:  Numeric; Average body linear acceleration mean frequency in the Z direction (frequency domain)
* fBodyAccJerk-mean()-X:  Numeric; Average body jerk linear acceleration mean in the X direction (frequency domain)
* fBodyAccJerk-mean()-Y:  Numeric; Average body jerk linear acceleration mean in the Y direction (frequency domain)
* fBodyAccJerk-mean()-Z:  Numeric; Average body jerk linear acceleration mean in the Z direction (frequency domain)
* fBodyAccJerk-std()-X:  Numeric; Average body jerk linear acceleration std dev in the X direction (frequency domain)
* fBodyAccJerk-std()-Y:  Numeric; Average body jerk linear acceleration std dev in the Y direction (frequency domain)
* fBodyAccJerk-std()-Z:  Numeric; Average body jerk linear acceleration std dev in the Z direction (frequency domain)
* fBodyAccJerk-meanFreq()-X:  Numeric; Average body jerk linear acceleration mean frequency in the X direction (frequency domain)
* fBodyAccJerk-meanFreq()-Y:  Numeric; Average body jerk linear acceleration mean frequency in the Y direction (frequency domain)
* fBodyAccJerk-meanFreq()-Z:  Numeric; Average body jerk linear acceleration mean frequency in the Z direction (frequency domain)
* fBodyGyro-mean()-X:  Numeric; Average body gyroscopic frequency mean in the X direction (frequency domain)
* fBodyGyro-mean()-Y:  Numeric; Average body gyroscopic frequency mean in the Y direction (frequency domain)
* fBodyGyro-mean()-Z:  Numeric; Average body gyroscopic frequency mean in the Z direction (frequency domain)
* fBodyGyro-std()-X:  Numeric; Average body gyroscopic frequency std dev in the X direction (frequency domain)
* fBodyGyro-std()-Y:  Numeric; Average body gyroscopic frequency std dev in the Y direction (frequency domain)
* fBodyGyro-std()-Z:  Numeric; Average body gyroscopic frequency std dev in the Z direction (frequency domain)
* fBodyGyro-meanFreq()-X:  Numeric; Average body gyroscopic frequency mean frequency in the X direction (frequency domain)
* fBodyGyro-meanFreq()-Y:  Numeric; Average body gyroscopic frequency mean frequency in the Y direction (frequency domain)
* fBodyGyro-meanFreq()-Z:  Numeric; Average body gyroscopic frequency mean frequency in the Z direction (frequency domain)
* fBodyAccMag-mean():  Numeric; Average body linear acceleration magnitude mean (frequency domain)
* fBodyAccMag-std():  Numeric; Average body linear acceleration magnitude std dev (frequency domain)
* fBodyAccMag-meanFreq():  Numeric; Average body linear acceleration magnitude mean frequency (frequency domain)
* fBodyBodyAccJerkMag-mean():  Numeric; Average body jerk linear acceleration magnitude mean (frequency domain)
* fBodyBodyAccJerkMag-std():  Numeric; Average body jerk linear acceleration magnitude std dev (frequency domain)
* fBodyBodyAccJerkMag-meanFreq():  Numeric; Average body jerk linear acceleration magnitude mean frequency (frequency domain)
* fBodyBodyGyroMag-mean(): Numeric; Average body gyroscopic frequency magnitude mean (frequency domain)
* fBodyBodyGyroMag-std():  Numeric; Average body gyroscopic frequency magnitude std dev (frequency domain)
* fBodyBodyGyroMag-meanFreq():  Numeric; Average body gyroscopic frequency magnitude mean frequency (frequency domain)
* fBodyBodyGyroJerkMag-mean():  Numeric; Average body jerk gyroscopic frequency magnitude mean (frequency domain)
* fBodyBodyGyroJerkMag-std():  Numeric; Average body jerk gyroscopic frequency magnitude std dev (frequency domain)
* fBodyBodyGyroJerkMag-meanFreq():  Numeric: Average body jerk gyroscopic frequency magnitude mean frequency (frequency domain)
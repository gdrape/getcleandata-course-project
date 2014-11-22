Codebook for course project - Getting and Cleaning Data

#Acknowledgement

Portions of the data description were obtained from the University of California - Irvine Machine Learning Repository website: 
(http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)  

#Study Design

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed 
six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) 
on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity 
at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly 
partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

#Raw Data

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

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

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

#Processed Data

In this project, the raw data was cleaned and reorganized as follows:
* The training and test data sets were merged.
* A subset of the features was created in which only the variables that were created by taking the mean or standard deviation were retained. 
* All variables were given descriptive names. 
* The activity_label variable was transformed to contain the name of the activity, i.e. WALKING, WALKING_DOWNSTAIRS, etc. 
* The retained features were averaged by subject and activity and written out into a tidy data set (results.txt) with a "wide" format. 

#Description of variables in the processed data set (codebook)

VARIABLE NAME					TYPE
subject							Integer
activity_name					Character
tBodyAcc-mean()-X				Numeric
tBodyAcc-mean()-Y				Numeric		
tBodyAcc-mean()-Z				Numeric
tBodyAcc-std()-X				Numeric
tBodyAcc-std()-Y				Numeric
tBodyAcc-std()-Z				Numeric
tGravityAcc-mean()-X			Numeric
tGravityAcc-mean()-Y			Numeric
tGravityAcc-mean()-Z			Numeric
tGravityAcc-std()-X				Numeric
tGravityAcc-std()-Y				Numeric
tGravityAcc-std()-Z				Numeric
tBodyAccJerk-mean()-X			Numeric
tBodyAccJerk-mean()-Y			Numeric
tBodyAccJerk-mean()-Z			Numeric
tBodyAccJerk-std()-X			Numeric
tBodyAccJerk-std()-Y			Numeric
tBodyAccJerk-std()-Z			Numeric
tBodyGyro-mean()-X				Numeric
tBodyGyro-mean()-Y				Numeric
tBodyGyro-mean()-Z				Numeric
tBodyGyro-std()-X				Numeric
tBodyGyro-std()-Y				Numeric
tBodyGyro-std()-Z				Numeric
tBodyGyroJerk-mean()-X			Numeric
tBodyGyroJerk-mean()-Y			Numeric
tBodyGyroJerk-mean()-Z			Numeric
tBodyGyroJerk-std()-X			Numeric
tBodyGyroJerk-std()-Y			Numeric
tBodyGyroJerk-std()-Z			Numeric
tBodyAccMag-mean()				Numeric
tBodyAccMag-std()				Numeric
tGravityAccMag-mean()			Numeric
tGravityAccMag-std()			Numeric
tBodyAccJerkMag-mean()			Numeric
tBodyAccJerkMag-std()			Numeric
tBodyGyroMag-mean()				Numeric
tBodyGyroMag-std()				Numeric
tBodyGyroJerkMag-mean()			Numeric
tBodyGyroJerkMag-std()			Numeric
fBodyAcc-mean()-X				Numeric
fBodyAcc-mean()-Y				Numeric
fBodyAcc-mean()-Z				Numeric
fBodyAcc-std()-X				Numeric
fBodyAcc-std()-Y				Numeric
fBodyAcc-std()-Z				Numeric
fBodyAcc-meanFreq()-X			Numeric
fBodyAcc-meanFreq()-Y			Numeric
fBodyAcc-meanFreq()-Z			Numeric
fBodyAccJerk-mean()-X			Numeric
fBodyAccJerk-mean()-Y			Numeric
fBodyAccJerk-mean()-Z			Numeric
fBodyAccJerk-std()-X			Numeric
fBodyAccJerk-std()-Y			Numeric
fBodyAccJerk-std()-Z			Numeric
fBodyAccJerk-meanFreq()-X		Numeric
fBodyAccJerk-meanFreq()-Y		Numeric
fBodyAccJerk-meanFreq()-Z		Numeric
fBodyGyro-mean()-X				Numeric
fBodyGyro-mean()-Y				Numeric
fBodyGyro-mean()-Z				Numeric
fBodyGyro-std()-X				Numeric
fBodyGyro-std()-Y				Numeric
fBodyGyro-std()-Z				Numeric
fBodyGyro-meanFreq()-X			Numeric
fBodyGyro-meanFreq()-Y			Numeric
fBodyGyro-meanFreq()-Z			Numeric
fBodyAccMag-mean()				Numeric
fBodyAccMag-std()				Numeric
fBodyAccMag-meanFreq()			Numeric
fBodyBodyAccJerkMag-mean()		Numeric
fBodyBodyAccJerkMag-std()		Numeric
fBodyBodyAccJerkMag-meanFreq()	Numeric
fBodyBodyGyroMag-mean()			Numeric
fBodyBodyGyroMag-std()			Numeric
fBodyBodyGyroMag-meanFreq()		Numeric
fBodyBodyGyroJerkMag-mean()		Numeric
fBodyBodyGyroJerkMag-std()		Numeric
fBodyBodyGyroJerkMag-meanFreq()	Numeric
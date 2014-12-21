---
title: "Getting and Cleaning Data Project"
output: html_document
---

Data collection
--------------

The data experiment was downloaded, unzipped and loaded on R programming language software from the link https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.


Data selection and analysis
--------------------------

This experiment have been carried out with a group of 30 volunteers within an age range of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 

Using its implanted accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.

The features coming from the 3-axial raw signals are tAcc-XYZ and tGyro-XYZ where prefix 't' to denote time. Then the signals were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 

Likewise, the acceleration signal was then separated into two parts: body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 

Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated and used for this assignment from these signals are: 
. mean(): Mean value
.	std(): Standard deviation

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:
.	gravityMean
.	tBodyAccMean
.	tBodyAccJerkMean
.	tBodyGyroMean
.	tBodyGyroJerkMean

The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'test/subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

The Getting and cleaning data was performed to:

1. merging the subject, activity and measurement of the training and testing data set
2. extracts only the measurements on the mean and standard deviation for each measurement. 
4. create a new tidy data set from step 2 with appropriate labels

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

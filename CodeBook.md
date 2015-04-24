---
title: "Getting And Cleaning Data - Course Project"
output: html_document
---

# Codebook

```
DATA DICTIONARY - HUMAN ACTIVITY USING SMARTPHONES

Data is found in datameans.txt
      		Space delimited, 180 observations of 88 variables.

subject  	Subject ID
			1..30

activity	Activity Measured
			WALKING
			WALKING_UPSTAIRS
			WALKING_DOWNSTAIRS
			SITTING
			STANDING
			LAYING
			
variables	This dataset includes a very large set of variables. These variables represent the mean of observations for each Subject/Activity combination for each feature. A general key for decoding the feature names is below

			t=time domain signal
			f=Fast Fourier Transform applied to produce frequency domain signal
			Acc=accelerometer signal
			Gyro=gyroscope 3-axial signal
			Body=body specific signal
			Gravity=gravity specific signal
			Jerk=body linear acceleration and angular velocity were derived in time
			Mag=magnitude of the three-dimensional Jerk signals, calculated using the Euclidean norm
			mean=Mean value
			std=Standard deviation
			mad=Median absolute deviation
			max=Largest value in array
			min=Smallest value in array
			sma=Signal magnitude area
			energy=Energy measure. Sum of the squares divided by the number of values
			iqr=Interquartile range 
			entropy=Signal entropy
			arCoeff=Autorregresion coefficients with Burg order equal to 4
			correlation=correlation coefficient between two signals
			maxInds=index of the frequency component with largest magnitude
			meanFreq=Weighted average of the frequency components to obtain a mean frequency
			skewness=skewness of the frequency domain signal 
			kurtosis=kurtosis of the frequency domain signal 
			bandsEnergy=Energy of a frequency interval within the 64 bins of the FFT of each window.
			angle=additional vectors obtained by averaging the signals in a signal window sample
			X/Y/Z=axis of signal
			
			This dataset is based on a dataset published by the UCI Machine Learning Repository.
			UCI provided a document which describes their original feature names and contents, which
			has been included as feature_info.text.
			
			Within the fdecode.R script, there is a function for assisting in decoding the feature
			names while exploring the dataset:
			
			-----------------------------------------------------------------------
			
			Decode Feature Names in Human Activity Using Smartphone Dataset

			Description

			fdecode will return an analysis of a given feature name using the key provided by the UCI
			Machine Learning Repository. This is in the form of a vector containing the feature name
			as submitted, followed by each component of the feature with its key.

			Usage

			fedcode(feature)
			
			Arguments

			feature
			The name of the feature (from the original UCI dataset) or the name of the variable from
			this dataset.

			Examples
			
			> fdecode("m.tbodyacc.mean.x")
			[1] "tbodyacc.mean.x"                                              
			[2] "m: Mean of all observations for a given subject/activity pair"
			[3] "t: time domain signal"                                        
			[4] "Acc: accelerometer signal"                                    
			[5] "Body: body specific signal"                                   
			[6] "mean: Mean value"
			
			> fdecode("m.fbodybodygyrojerkmag.meanfreq")
			[1] "fbodybodygyrojerkmag.meanfreq"                                                             
			[2] "m: Mean of all observations for a given subject/activity pair"                            
			[3] "f: Fast Fourier Transform applied to produce frequency domain signal"                      
			[4] "Gyro: gyroscope 3-axial signal"                                                            
			[5] "Body: body specific signal"                                                                
			[6] "Jerk: body linear acceleration and angular velocity were derived in time"                  
			[7] "Mag: magnitude of the three-dimensional Jerk signals, calculated using the Euclidean norm "
			[8] "mean: Mean value"                                                                          
			[9] "meanFreq: Weighted average of the frequency components to obtain a mean frequency"  
 
			-------------------------------------------------
			
			Finally, here is a list of all the variables contained in the dataset:

			m.tbodyacc.mean.x
			m.tbodyacc.mean.y
			m.tbodyacc.mean.z
			m.tgravityacc.mean.x
			m.tgravityacc.mean.y
			m.tgravityacc.mean.z
			m.tbodyaccjerk.mean.x
			m.tbodyaccjerk.mean.y
			m.tbodyaccjerk.mean.z
			m.tbodygyro.mean.x
			m.tbodygyro.mean.y
			m.tbodygyro.mean.z
			m.tbodygyrojerk.mean.x
			m.tbodygyrojerk.mean.y
			m.tbodygyrojerk.mean.z
			m.tbodyaccmag.mean
			m.tgravityaccmag.mean
			m.tbodyaccjerkmag.mean
			m.tbodygyromag.mean
			m.tbodygyrojerkmag.mean
			m.fbodyacc.mean.x
			m.fbodyacc.mean.y
			m.fbodyacc.mean.z
			m.fbodyacc.meanfreq.x
			m.fbodyacc.meanfreq.y
			m.fbodyacc.meanfreq.z
			m.fbodyaccjerk.mean.x
			m.fbodyaccjerk.mean.y
			m.fbodyaccjerk.mean.z
			m.fbodyaccjerk.meanfreq.x
			m.fbodyaccjerk.meanfreq.y
			m.fbodyaccjerk.meanfreq.z
			m.fbodygyro.mean.x
			m.fbodygyro.mean.y
			m.fbodygyro.mean.z
			m.fbodygyro.meanfreq.x
			m.fbodygyro.meanfreq.y
			m.fbodygyro.meanfreq.z
			m.fbodyaccmag.mean
			m.fbodyaccmag.meanfreq
			m.fbodybodyaccjerkmag.mean
			m.fbodybodyaccjerkmag.meanfreq
			m.fbodybodygyromag.mean
			m.fbodybodygyromag.meanfreq
			m.fbodybodygyrojerkmag.mean
			m.fbodybodygyrojerkmag.meanfreq
			m.angle.tbodyaccmean.gravity
			m.angle.tbodyaccjerkmean.gravitymean
			m.angle.tbodygyromean.gravitymean
			m.angle.tbodygyrojerkmean.gravitymean
			m.angle.x.gravitymean
			m.angle.y.gravitymean
			m.angle.z.gravitymean
			m.tbodyacc.std.x
			m.tbodyacc.std.y
			m.tbodyacc.std.z
			m.tgravityacc.std.x
			m.tgravityacc.std.y
			m.tgravityacc.std.z
			m.tbodyaccjerk.std.x
			m.tbodyaccjerk.std.y
			m.tbodyaccjerk.std.z
			m.tbodygyro.std.x
			m.tbodygyro.std.y
			m.tbodygyro.std.z
			m.tbodygyrojerk.std.x
			m.tbodygyrojerk.std.y
			m.tbodygyrojerk.std.z
			m.tbodyaccmag.std
			m.tgravityaccmag.std
			m.tbodyaccjerkmag.std
			m.tbodygyromag.std
			m.tbodygyrojerkmag.std
			m.fbodyacc.std.x
			m.fbodyacc.std.y
			m.fbodyacc.std.z
			m.fbodyaccjerk.std.x
			m.fbodyaccjerk.std.y
			m.fbodyaccjerk.std.z
			m.fbodygyro.std.x
			m.fbodygyro.std.y
			m.fbodygyro.std.z
			m.fbodyaccmag.std
			m.fbodybodyaccjerkmag.std
			m.fbodybodygyromag.std
			m.fbodybodygyrojerkmag.std

```

# Description of transformations and analysis performed on the data      


```{r}

## loading libraries first

library(data.table)
library(plyr)
library(dplyr)

```

## This will be presented in a logical flow, along with the listed Project
## requirements, to ease grading.

## Requirement 1: Merges the training and the test sets to create one data set.

First the information in each .txt file was loaded into tables with R.

```{r}

## first read the labels

print("Reading labels...")

dt_features <- read.table("./UCI HAR Dataset/features.txt", col.names = c("Index", "Feature"))

dt_activities <- read.table("./UCI HAR Dataset/activity_labels.txt", col.names = c("Index", "Activity"))

## translating the Features list into R-compatible column names - requirement #4

dt_features$FeatureTrans <- dt_features$Feature
dt_features$FeatureTrans <- gsub("\\(\\)-", ".", dt_features$FeatureTrans)
dt_features$FeatureTrans <- gsub("\\(\\)", "", dt_features$FeatureTrans)
dt_features$FeatureTrans <- gsub("\\(", ".", dt_features$FeatureTrans)
dt_features$FeatureTrans <- gsub("\\)", "", dt_features$FeatureTrans)
dt_features$FeatureTrans <- gsub("-", ".", dt_features$FeatureTrans)
dt_features$FeatureTrans <- gsub("\\,", ".", dt_features$FeatureTrans)

## test first

print("Reading test data...")

dt_testsubject <- read.table("./UCI HAR Dataset/test/subject_test.txt", col.names = "Subject")

dt_testx <- read.table("./UCI HAR Dataset/test/X_test.txt", col.names = dt_features$FeatureTrans)

dt_testy <- read.table("./UCI HAR Dataset/test/y_test.txt", col.names = "Activity")

## then train

print("Reading train data...")

dt_trainsubject <- read.table("./UCI HAR Dataset/train/subject_train.txt", col.names = "Subject")

dt_trainx <- read.table("./UCI HAR Dataset/train/X_train.txt", col.names = dt_features$FeatureTrans)

dt_trainy <- read.table("./UCI HAR Dataset/train/y_train.txt", col.names = "Activity")


```

Then, the x, and y sets were combined so that a single table could be produced
reflecting all variables.

```{r}

dt_test <- cbind(dt_testsubject, dt_testy, dt_testx)

dt_train <- cbind(dt_trainsubject, dt_trainy, dt_trainx)

```

The train and test datasets were then combined.

```{r}

dt_data <- rbind(dt_test, dt_train)

```

```{r}

## minor environment cleanup, leaving dt_activities and dt_features

rm(dt_test, dt_testsubject, dt_testx, dt_testy, dt_train, dt_trainsubject, dt_trainx, dt_trainy)

```

# 2.Extracts only the measurements on the mean and standard deviation for each measurement. 

The dataset was subsetted to include only features which reflect a mean or std.

```{r}

dt_datasub <- select(dt_data, Subject, Activity, contains("mean"), contains("std"))


```

# 3.Uses descriptive activity names to name the activities in the data set

The activity values (1 to 6) are replaced with proper labels as indicated in the
dataset.

```{r}

dt_datasub$Activity <- dt_activities$Activity[dt_datasub$Activity]


```

# 4.Appropriately labels the data set with descriptive variable names. 

When first ingesting the data, the features names were processed to be compatible
with R (you can see this in Requirement #1 section above).

However, the variable names are all VERY complicated. Many are only
truly tidily describeable with 15+ character long names - which is NOT
tidy.

The feature names have been left as-is, and have been supplemented by a 
function to decode what each means. It breaks down the naming convention and
returns a vector with the significance of each portion. I think this is
the best way to make it accessible.

This function is in fdecode.R.

fdecode.txt is a key, which is derived from features_info.txt

## 5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The data will be melted, and recast in a wide-version table containing the mean
for all observations of each Activity/Subject combination.

```{r}

# recast() combines both melt() and dcast() into one single step

dt_datameans <- recast(dt_datasub, Subject + Activity ~ variable, mean, id.var = c("Subject", "Activity"))

```

Finally, "m." is appended to the beginning of each variable to reflect that they
are means for all observations, and all variables are made lower case for tidyness.

```{r}

# finally, change all variable names to lowercase

names(dt_datameans) <- tolower(c(
                            "subject",
                            "activity",
                            paste("m.", names(dt_datameans[,3:88]), sep = "")
                            ))

## clear unnecessary objects from environment

rm(dt_activities, dt_data, dt_datasub, dt_features)

```

# Finally, the data is written to datameans.txt

```

write.table(dt_datameans, "datameans.txt")


```

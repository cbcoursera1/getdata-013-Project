## -------------------------------------------------------------------------

## This R script retrieves and processes data from the Human Activity
## Using Smartphones dataset.

## The data is injested from the various .txt files within the dataset,
## irrelevant variables are removed, the data is made tidy, and then means
## are calculated for each feature across all combinations of
## Activity/Subject

## loading libraries first

library(data.table)
library(plyr)
library(dplyr)


# You should create one R script called run_analysis.R that does the following. 

# 1.Merges the training and the test sets to create one data set.

## first read the labels

print("Reading labels...")

dt_features <- read.table("./UCI HAR Dataset/features.txt", col.names = c("Index", "Feature"))

dt_activities <- read.table("./UCI HAR Dataset/activity_labels.txt", col.names = c("Index", "Activity"))

## translating the Features list into R-compatible column names

dt_features$FeatureTrans <- dt_features$Feature # temporary storage
dt_features$FeatureTrans <- gsub("\\(\\)-", ".", dt_features$FeatureTrans) # no ()- allowed
dt_features$FeatureTrans <- gsub("\\(\\)", "", dt_features$FeatureTrans) # no () allowed
dt_features$FeatureTrans <- gsub("\\(", ".", dt_features$FeatureTrans) # ( allowed)
dt_features$FeatureTrans <- gsub("\\)", "", dt_features$FeatureTrans) # no ) allowed
dt_features$FeatureTrans <- gsub("-", ".", dt_features$FeatureTrans) # no - allowed
dt_features$FeatureTrans <- gsub("\\,", ".", dt_features$FeatureTrans) # no , allowed

## read test first

print("Reading test data...")

dt_testsubject <- read.table(
                      "./UCI HAR Dataset/test/subject_test.txt",
                      col.names = "Subject"
                      )

dt_testx <- read.table(
                      "./UCI HAR Dataset/test/X_test.txt",
                      col.names = dt_features$FeatureTrans
                      )

dt_testy <- read.table(
                      "./UCI HAR Dataset/test/y_test.txt",
                      col.names = "Activity")

## then train

print("Reading train data...")

dt_trainsubject <- read.table(
                        "./UCI HAR Dataset/train/subject_train.txt",
                        col.names = "Subject"
                        )

dt_trainx <- read.table(
                        "./UCI HAR Dataset/train/X_train.txt",
                        col.names = dt_features$FeatureTrans
                        )

dt_trainy <- read.table(
                        "./UCI HAR Dataset/train/y_train.txt",
                        col.names = "Activity")


## Now, let's combine the subject, x, and y sets so that we can use them together


dt_test <- cbind(dt_testsubject, dt_testy, dt_testx)

dt_train <- cbind(dt_trainsubject, dt_trainy, dt_trainx)

## And then combine the test and train datasets

dt_data <- rbind(dt_test, dt_train)

## And clean up the environment

## leaving dt_activities and dt_features

rm(dt_test, dt_testsubject, dt_testx, dt_testy, dt_train, dt_trainsubject, dt_trainx, dt_trainy)

# 2.Extracts only the measurements on the mean and standard deviation for each measurement. 

dt_datasub <- select(
                  dt_data,
                  Subject,
                  Activity,
                  contains("mean"), # any column that is a mean
                  contains("std") # any column that is a std
                  )

# 3.Uses descriptive activity names to name the activities in the data set

# loading the activity names which came from activity_labels.txt

dt_datasub$Activity <- dt_activities$Activity[dt_datasub$Activity]

# 4.Appropriately labels the data set with descriptive variable names. 

## This was covered above while ingesting the data.

## However, the variable names are all VERY complicated. Many are only
## truly tidily describeable with 15+ character long names - which is NOT
## tidy. I'm going to leave them as is, but create a function to decode
## what each means. It'll break down naming convention and return a vector
## with the significance of each part. I think this is the best way to make
## it accessible.

## fdecode.txt is a key, which is derived from features_info.txt

## This function is in fdecode.R

dt_fdecode <- read.table(
  "fdecode.txt",
  colClasses = rep("character", 2),
  sep = ",",
  header = T
)

source("fdecode.R")

# 5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## recast() combines both melt() and dcast() into one single step

dt_datameans <- recast(dt_datasub, Subject + Activity ~ variable, mean, id.var = c("Subject", "Activity"))

## finally, add m. to the beginning of each feature variable, and 
## change all variable names to lowercase

names(dt_datameans) <- tolower(c(
                            "subject",
                            "activity",
                            paste("m.", names(dt_datameans[,3:88]), sep = "")
                            ))

## clear unnecessary objects from environment

rm(dt_activities, dt_data, dt_datasub, dt_features)

## finally, write the data to datameans.txt

file <- file("datameans.txt")
write.table(dt_datameans, "datameans.txt")
print("Write successful...")
close(file)
print("Finished.")
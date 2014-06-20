## This R script is created for project assignment of "Getting and Cleaning Data" course
## It will perform following tasks for "UCI HAR Dataset":
##  1.	Merges the training and the test sets to create one data set.
##  2.	Extracts only the measurements on the mean and standard deviation for each measurement. 
##  3.	Uses descriptive activity names to name the activities in the data set
##  4.	Appropriately labels the data set with descriptive variable names. 
##  5.	Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

## Usage: 
##  1. Save this "run_analysis.R" file to the same directory as the root of the "UCI HAR Dataset"
##  2. Set your working directory to this folder: setwd("<folder name>")
##  3. Run: source("run_analysis.R")

## Result Validation and Review:
##  Two files will be created in you working directory: ProjectResult1.txt and ProjectResult2.txt
##  The 1st file contains the result from Tast/Requirement 1 to 4 
##  The 2nd file contains the result from Tast/Requirement 5 
##  You can use read.table command to load them to R for further verification
##  The implementation of this script is based on the project assignment and the discussion forum.
##  Thank you for the review!!!

## Load feature list and change them to descriptive name that acceptable for the programming 
## language when need further processing (Requirement 4)
dFeatureList <- read.table("./UCI HAR Dataset/features.txt", sep="\t", strip.white=TRUE)
dFeatureList.p <- as.vector(dFeatureList[,1])
dFeatureList.p <- gsub("\\d+ ", "", dFeatureList.p)
dFeatureList.p <- gsub("\\(\\)\\-", "_", dFeatureList.p)
dFeatureList.p <- gsub("\\(\\)", "", dFeatureList.p)
dFeatureList.p <- gsub("\\(", "_", dFeatureList.p)
dFeatureList.p <- gsub("\\)", "", dFeatureList.p)
dFeatureList.p <- gsub("\\,", "_", dFeatureList.p)
dFeatureList.p <- gsub("\\-", "_", dFeatureList.p)

## Load Train dataset, remove unnecessary columns and merge together (Requirement 1, 2)
dTrainData <- read.table("./UCI HAR Dataset/train/X_train.txt",  col.names=dFeatureList.p, sep="")
dTrainActivity <- read.table("./UCI HAR Dataset/train/y_train.txt",  col.names=c("activity"), sep="\t")
dTrainSubject <- read.table("./UCI HAR Dataset/train/subject_train.txt",  col.names=c("subject"), sep="\t")

dTrainData <- dTrainData[, grepl(("mean|std|Mean"), names(dTrainData))]
dTrain<-cbind(dTrainSubject, dTrainActivity, dTrainData)

## Load Test dataset, remove unnecessary columns and merge together (Requirement 1, 2)
dTestData <- read.table("./UCI HAR Dataset/test/X_test.txt",  col.names=dFeatureList.p, sep="")
dTestActivity <- read.table("./UCI HAR Dataset/test/y_test.txt",  col.names=c("activity"), sep="\t")
dTestSubject <- read.table("./UCI HAR Dataset/test/subject_test.txt",  col.names=c("subject"), sep="\t")

dTestData <- dTestData[, grepl(("mean|std|Mean"), names(dTestData))]
dTest<-cbind(dTestSubject, dTestActivity, dTestData)

## Combine train and test datasets (Requirement 1)
d <- rbind(dTrain, dTest)

## Load activity list and substitute the values in the activity column of dataset(Requirement 3)
activityList <- read.table("./UCI HAR Dataset/activity_labels.txt", sep="")
for(i in 1:6) {d$activity <- gsub(activityList[i, 1], activityList[i, 2], d$activity)}

## Save interim  result to "ProjectResult1.txt" file
write.table(d, file = "ProjectResult1.txt", sep = " ", row.names = FALSE, col.names = TRUE)

## Requirement 5: Creating a second, independent tidy data set with the average of each variable for each activity and each subject
d2<-aggregate(d, list(d$subject, d$activity), mean)
d2[, 4] <- d2[, 2]
d2 <- d2[, 3:ncol(d2)]

## Save final dataset to "ProjectResult2.txt" file
write.table(d2, file = "ProjectResult2.txt", sep = " ", row.names = FALSE, col.names = TRUE)


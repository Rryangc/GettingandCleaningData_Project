The project submission includes the following files:
====================================================

From the Github repo: ( https://github.com/Rryangc/GettingandCleaningData_Project.git )

- 'README.md'

- 'run_analysis.R': The R script to process the original dataset.

- 'CodeBook.md': describes the variables, the data, and any transformations or work that you performed to clean up the data 

From the project submission link:

- 'ProjectResult2.txt': Final dataset after the required 5 steps.



How to validate my script ('run_analysis.R') and the data result('rojectResult2.txt'):
======================================================================================

- Download the R script, 'run_analysis.R' and save it to the same directory you unzip the project dataset, 'UCI HAR Dataset'.
  Please note that it should be the parent directory of README file of UCI HAR Dataset. 
  The script using this path to load the data: ./UCI HAR Dataset/...', ./UCI HAR Dataset/train/...' or './UCI HAR Dataset/test/...'
  If you use dos command line you can see something like this:
  
			>dir 
			06/18/2014  12:59 AM    <DIR>          .
			06/18/2014  12:59 AM    <DIR>          ..
			06/17/2014  05:44 PM             3,901 run_analysis.R
			06/17/2014  12:04 AM    <DIR>          UCI HAR Dataset
			06/16/2014  11:14 PM        62,556,944 UCI HAR Dataset.zip
						   2 File(s)     xxxxxx bytes
						   1 Dir(s)  	 xxxxxx bytes free
			>cd UCI HAR Dataset
			>dir
			06/17/2014  12:04 AM    <DIR>          .
			06/17/2014  12:04 AM    <DIR>          ..
			06/16/2014  03:52 PM                80 activity_labels.txt
			06/16/2014  03:52 PM            15,785 features.txt
			06/16/2014  03:52 PM             2,809 features_info.txt
			06/16/2014  03:52 PM             4,453 README.txt
			06/17/2014  12:04 AM    <DIR>          test
			06/16/2014  03:53 PM    <DIR>          train
						   4 File(s)         23,127 bytes
						   4 Dir(s)  130,908,237,824 bytes free
						   
- Open R console

- From R console, setup the working directory to the place you saved the R script file;  > setwd("<folder name>")

- From R console run:  > source("run_analysis.R")	

- Two files will be created in you working directory: ProjectResult1.txt and ProjectResult2.txt
  The 1st file contains the result from Tast/Requirement 1 to 4 
  The 2nd file contains the result from Tast/Requirement 5 
  
- The second file generated, 'ProjectResult2.txt' should be identical to the file loaded to project link.
  You can use read.table command to load them to R for further verification

 

Implementation Details for Reviewer:
====================================
  
- The implementation of this script is based on the project assignment and the TA's comments posted on discussion forum.

- The implementation of "Extracts only the measurements on the mean and standard deviation for each measurement":
  --> all the columns with name containing 'mean', 'std' or 'Mean'.

- The implementation of "Uses descriptive activity names to name the activities in the data set":
  --> the activity names listed in 'activity_labels.txt' from original dataset was used.
 
- The implementation of "Appropriately labels the data set with descriptive variable names":
  --> even in the slides from Week 3 lectures suggests using all lower case with no dots. 
	  But after read TA's commands and considering the readability, I used underscores to separate words in the names
  
##################################
##  Thank you for the review!!!	##				   
##################################


Additional Notes: 
=================
- The original dataset is from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

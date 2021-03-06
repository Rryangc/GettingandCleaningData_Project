DATA DICTIONARY - PROJECT RESULT FOR COURSE "Getting and Cleaning Data"

+ 	subject:  ID of the volunteer. These values are same as the values in the original dataset.
		1..30

+ 	activity:  Activity name of the person performed. The original dataset uses number 1-6 to represent these activities. The run_analysis.R script replaced the numbers with the activity names.
		WALKING
		WALKING_UPSTAIRS
		WALKING_DOWNSTAIRS
		SITTING
		STANDING
		LAYING
	
+ 	tBodyAcc_mean_X
	tBodyAcc_mean_Y
	tBodyAcc_mean_Z
	tBodyAcc_std_X
	tBodyAcc_std_Y
	tBodyAcc_std_Z
	tGravityAcc_mean_X
	tGravityAcc_mean_Y
	tGravityAcc_mean_Z
	tGravityAcc_std_X
	tGravityAcc_std_Y
	tGravityAcc_std_Z
	tBodyAccJerk_mean_X
	tBodyAccJerk_mean_Y
	tBodyAccJerk_mean_Z
	tBodyAccJerk_std_X
	tBodyAccJerk_std_Y
	tBodyAccJerk_std_Z
	tBodyGyro_mean_X
	tBodyGyro_mean_Y
	tBodyGyro_mean_Z
	tBodyGyro_std_X
	tBodyGyro_std_Y
	tBodyGyro_std_Z
	tBodyGyroJerk_mean_X
	tBodyGyroJerk_mean_Y
	tBodyGyroJerk_mean_Z
	tBodyGyroJerk_std_X
	tBodyGyroJerk_std_Y
	tBodyGyroJerk_std_Z
	tBodyAccMag_mean
	tBodyAccMag_std
	tGravityAccMag_mean
	tGravityAccMag_std
	tBodyAccJerkMag_mean
	tBodyAccJerkMag_std
	tBodyGyroMag_mean
	tBodyGyroMag_std
	tBodyGyroJerkMag_mean
	tBodyGyroJerkMag_std
	fBodyAcc_mean_X
	fBodyAcc_mean_Y
	fBodyAcc_mean_Z
	fBodyAcc_std_X
	fBodyAcc_std_Y
	fBodyAcc_std_Z
	fBodyAcc_meanFreq_X
	fBodyAcc_meanFreq_Y
	fBodyAcc_meanFreq_Z
	fBodyAccJerk_mean_X
	fBodyAccJerk_mean_Y
	fBodyAccJerk_mean_Z
	fBodyAccJerk_std_X
	fBodyAccJerk_std_Y
	fBodyAccJerk_std_Z
	fBodyAccJerk_meanFreq_X
	fBodyAccJerk_meanFreq_Y
	fBodyAccJerk_meanFreq_Z
	fBodyGyro_mean_X
	fBodyGyro_mean_Y
	fBodyGyro_mean_Z
	fBodyGyro_std_X
	fBodyGyro_std_Y
	fBodyGyro_std_Z
	fBodyGyro_meanFreq_X
	fBodyGyro_meanFreq_Y
	fBodyGyro_meanFreq_Z
	fBodyAccMag_mean
	fBodyAccMag_std
	fBodyAccMag_meanFreq
	fBodyBodyAccJerkMag_mean
	fBodyBodyAccJerkMag_std
	fBodyBodyAccJerkMag_meanFreq
	fBodyBodyGyroMag_mean
	fBodyBodyGyroMag_std
	fBodyBodyGyroMag_meanFreq
	fBodyBodyGyroJerkMag_mean
	fBodyBodyGyroJerkMag_std
	fBodyBodyGyroJerkMag_meanFreq
	
		Variables starting with "t":
			These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. 
			Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
			Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
			Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 
			Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

		Variables starting with "f":
			a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

		General:
			- These signals were used to estimate variables of the feature vector for each pattern:  
			- '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
				tBodyAcc-XYZ
				tGravityAcc-XYZ
				tBodyAccJerk-XYZ
				tBodyGyro-XYZ
				tBodyGyroJerk-XYZ
				tBodyAccMag
				tGravityAccMag
				tBodyAccJerkMag
				tBodyGyroMag
				tBodyGyroJerkMag
				fBodyAcc-XYZ
				fBodyAccJerk-XYZ
				fBodyGyro-XYZ
				fBodyAccMag
				fBodyAccJerkMag
				fBodyGyroMag
				fBodyGyroJerkMag
			- The set of variables that were estimated from these signals are: 
				mean(): Mean value
				std(): Standard deviation
				meanFreq(): Weighted average of the frequency components to obtain a mean frequency.
			- All values are normalized and bounded within [-1,1].
			- Each feature vector is a row on the text file.
			- Field selection from the original dataset: all the columns with names containing 'mean', 'std' or 'Mean' were kept
			- All values are the average of each variable for each activity and each subject from original dataset. It is as the result of run_analysis.R script.		
	
+	angle_tBodyAccMean_gravity
	angle_tBodyAccJerkMean_gravityMean
	angle_tBodyGyroMean_gravityMean
	angle_tBodyGyroJerkMean_gravityMean
	angle_X_gravityMean
	angle_Y_gravityMean
	angle_Z_gravityMean
	
		Those are the additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:
			gravityMean
			tBodyAccMean
			tBodyAccJerkMean
			tBodyGyroMean
			tBodyGyroJerkMean
		General:
			- '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
			- All values are the average of each variable for each activity and each subject.
			- All values are normalized and bounded within [-1,1].
			- Each feature vector is a row on the text file.
			- Field selection from the original dataset: all the columns with names containing 'mean', 'std' or 'Mean' were kept
			- All values are the average of each variable for each activity and each subject from original dataset. It is as the result of run_analysis.R script.


* Notes for the original measurement and dataset: 
Measurement: The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 
Attribute Info: For each record in the dataset it is provided: - Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. - Triaxial Angular velocity from the gyroscope.  - A 561-feature vector with time and frequency domain variables. - Its activity label.  - An identifier of the subject who carried out the experiment. 


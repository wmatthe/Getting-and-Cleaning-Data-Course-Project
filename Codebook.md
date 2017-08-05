Getting and Cleaning Data 

Experiment

This data was collected by monitoring 30 volunteers who wore a smartphone app to measure their movements. 

Data

Here is a link to the data used for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 


Tidy Dataset

The tidyData.txt file contains average mean and standard deviation measurements for each subject and activity. 

Variables

These are the variables used in the tidyData dataset: 


SubjectID - subject performing the activity

Activity - activity name 	

tBodyAcc-mean()-X - Average time-domain body acceleration	

tBodyAcc-mean()-Y - Average time-domain body acceleration

tBodyAcc-mean()-Z - Average time-domain body acceleration

tBodyAcc-std()-X - Standard deviation of the time-domain body acceleration 

tBodyAcc-std()-Y - Standard deviation of the time-domain body acceleration 

tBodyAcc-std()-Z - Standard deviation of the time-domain body acceleration 

tGravityAcc-mean()-X - Average time-domain gravity acceleration 

tGravityAcc-mean()-Y - Average time-domain gravity acceleration 

tGravityAcc-mean()-Z - Average time-domain gravity acceleration 

tGravityAcc-std()-X - Standard deviation of the time-domain gravity acceleration 

tGravityAcc-std()-Y - Standard deviation of the time-domain gravity acceleration 

tGravityAcc-std()-Z - Standard deviation of the time-domain gravity acceleration 

tBodyAccJerk-mean()-X - Average time-domain body acceleration jerk (derivation of the acceleration in time) 

tBodyAccJerk-mean()-Y - Average time-domain body acceleration jerk (derivation of the acceleration in time)

tBodyAccJerk-mean()-Z - Average time-domain body acceleration jerk (derivation of the acceleration in time) 

tBodyAccJerk-std()-X - Standard deviation of the time-domain body acceleration jerk (derivation of the acceleration in time)

tBodyAccJerk-std()-Y - Standard deviation of the time-domain body acceleration jerk (derivation of the acceleration in time)

tBodyAccJerk-std()-Z Standard deviation of the time-domain body acceleration jerk (derivation of the acceleration in time)

tBodyGyro-mean()-X - Average time-domain body angular velocity

tBodyGyro-mean()-Y - Average time-domain body angular velocity

tBodyGyro-mean()-Z - Average time-domain body angular velocity

tBodyGyro-std()-X - Standard deviation of the time-domain body angular velocity 

tBodyGyro-std()-Y - Standard deviation of the time-domain body angular velocity 

tBodyGyro-std()-Z - Standard deviation of the time-domain body angular velocity 

tBodyGyroJerk-mean()-X - Average time-domain body angular velocity jerk (derivation of the angular velocity in time) 

tBodyGyroJerk-mean()-Y - Average time-domain body angular velocity jerk (derivation of the angular velocity in time) 

tBodyGyroJerk-mean()-Z - Average time-domain body angular velocity jerk (derivation of the angular velocity in time) 

tBodyGyroJerk-std()-X - Standard deviation of the time-domain body angular velocity jerk (derivation of the angular velocity in time) 

tBodyGyroJerk-std()-Y - Standard deviation of the time-domain body angular velocity jerk (derivation of the angular velocity in time) 

tBodyGyroJerk-std()-Z - Standard deviation of the time-domain body angular velocity jerk (derivation of the angular velocity in time) 

tBodyAccMag-mean() - Average of the time-domain magnitude of body acceleration

tBodyAccMag-std() - Standard deviation of the time-domain magnitude of body acceleration

tGravityAccMag-mean() - Average of the time-domain magnitude of gravity acceleration

tGravityAccMag-std() - Standard deviation of the time-domain magnitude of gravity acceleration

tBodyAccJerkMag-mean() - Average of the time-domain magnitude of body acceleration jerk (derivation of the acceleration in time)

tBodyAccJerkMag-std() - Standard deviation of the time-domain magnitude of body acceleration jerk (derivation of the acceleration in time)

tBodyGyroMag-mean() - Average of the time-domain magnitude of body angular velocity

tBodyGyroMag-std() - Standard deviation of the time-domain magnitude of body angular velocity

tBodyGyroJerkMag-mean() - Average of the time-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time)

tBodyGyroJerkMag-std() - Standard deviation of the time-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time)

fBodyAcc-mean()-X - Average frequency-domain body acceleration

fBodyAcc-mean()-Y - Average frequency-domain body acceleration

fBodyAcc-mean()-Z - Average frequency-domain body acceleration

fBodyAcc-std()-X - Standard deviation of the frequency-domain body acceleration

fBodyAcc-std()-Y - Standard deviation of the frequency-domain body acceleration

fBodyAcc-std()-Z - Standard deviation of the frequency-domain body acceleration

fBodyAcc-meanFreq()-X - Weighted average of the frequency components of the frequency-domain body acceleration

fBodyAcc-meanFreq()-Y - Weighted average of the frequency components of the frequency-domain body acceleration

fBodyAcc-meanFreq()-Z - Weighted average of the frequency components of the frequency-domain body acceleration

fBodyAccJerk-men()-X - Average frequency-domain body acceleration jerk (derivation of the acceleration in time) 

fBodyAccJerk-mean()-Y - Average frequency-domain body acceleration jerk (derivation of the acceleration in time) 

fBodyAccJerk-mean()-Z - Average frequency-domain body acceleration jerk (derivation of the acceleration in time) 

fBodyAccJerk-std()-X - Standard deviation of the frequency-domain body acceleration jerk (derivation of the acceleration in time)

fBodyAccJerk-std()-Y - Standard deviation of the frequency-domain body acceleration jerk (derivation of the acceleration in time)

fBodyAccJerk-std()-Z - Standard deviation of the frequency-domain body acceleration jerk (derivation of the acceleration in time)

fBodyAccJerk-meanFreq()-X - Weighted average of the frequency components of the frequency-domain body acceleration jerk (derivation of the acceleration in time)

fBodyAccJerk-meanFreq()-Y - Weighted average of the frequency components of the frequency-domain body acceleration jerk (derivation of the acceleration in time)

fBodyAccJerk-meanFreq()-Z - Weighted average of the frequency components of the frequency-domain body acceleration jerk (derivation of the acceleration in time)

fBodyGyro-mean()-X - Average frequency-domain body angular velocity

fBodyGyro-mean()-Y - Average frequency-domain body angular velocity

fBodyGyro-mean()-Z - Average frequency-domain body angular velocity

fBodyGyro-std()-X - Standard deviation of the frequency-domain body angular velocity

fBodyGyro-std()-Y - Standard deviation of the frequency-domain body angular velocity

fBodyGyro-std()-Z - Standard deviation of the frequency-domain body angular velocity

fBodyGyro-meanFreq()-X - Weighted average of the frequency components of the frequency-domain body angular velocity 

fBodyGyro-meanFreq()-Y - Weighted average of the frequency components of the frequency-domain body angular velocity 

fBodyGyro-meanFreq()-Z - Weighted average of the frequency components of the frequency-domain body angular velocity 

fBodyAccMag-mean() - Average of the frequency components of the frequency-domain magnitude of body acceleration

fBodyAccMag-std() - Standard deviation of the frequency components of the frequency-domain magnitude of body acceleration

fBodyAccMag-meanFreq() - Weighted average of the frequency components of the frequency-domain magnitude of body acceleration

fBodyBodyAccJerkMag-mean() - Average of the frequency components of the frequency-domain magnitude of body acceleration jerk (derivation of the acceleration in time)

fBodyBodyAccJerkMag-std() - Standard deviation of the frequency components of the frequency-domain magnitude of body acceleration jerk (derivation of the acceleration in time)

fBodyBodyAccJerkMag-meanFreq() - Weighted average of the frequency components of the frequency-domain magnitude of body acceleration jerk (derivation of the acceleration in time)

fBodyBodyGyroMag-mean() - Average of the frequency components of the frequency-domain magnitude of body angular velocity

fBodyBodyGyroMag-std() - Standard deviation of the frequency components of the frequency-domain magnitude of body angular velocity

fBodyBodyGyroMag-meanFreq() - Weighted average of the frequency components of the frequency-domain magnitude of body angular velocity

fBodyBodyGyroJerkMag-mean() - Average of the frequency components of the frequency-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time)

fBodyBodyGyroJerkMag-std() - Standard deviation of the frequency components of the frequency-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time)

fBodyBodyGyroJerkMag-meanFreq() - Weighted average of the frequency components of the frequency-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time)


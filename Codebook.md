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


subjectId - subject performing the activity

activityId - id number of activity	

activityType - type of activity measured

timeBodyAccMean-X - Average time-domain body acceleration	

timeBodyAccMean-Y - Average time-domain body acceleration

timeBodyAccMean-Z - Average time-domain body acceleration

timeBodyAcc-std-X - Standard deviation of the time-domain body acceleration 

timeBodyAcc-std-Y - Standard deviation of the time-domain body acceleration 

timeBodyAcc-std-Z - Standard deviation of the time-domain body acceleration 

timeGravityAccMean-X - Average time-domain gravity acceleration 

timeGravityAccMean-Y - Average time-domain gravity acceleration 

timeGravityAccMean-Z - Average time-domain gravity acceleration 

timeGravityAcc-std-X - Standard deviation of the time-domain gravity acceleration 

timeGravityAcc-std-Y - Standard deviation of the time-domain gravity acceleration 

timeGravityAcc-std-Z - Standard deviation of the time-domain gravity acceleration 

timeBodyAccJerkMean-X - Average time-domain body acceleration jerk (derivation of the acceleration in time) 

timeBodyAccJerkMean-Y - Average time-domain body acceleration jerk (derivation of the acceleration in time) 

timeBodyAccJerkMean-Z - Average time-domain body acceleration jerk (derivation of the acceleration in time) 

timeBodyAccJerk-std-X - Standard deviation of the time-domain body acceleration jerk (derivation of the acceleration in time)

timeBodyAccJerk-std-Y - Standard deviation of the time-domain body acceleration jerk (derivation of the acceleration in time)

timeBodyAccJerk-std-Z Standard deviation of the time-domain body acceleration jerk (derivation of the acceleration in time)

timeBodyGyroMean-X - Average time-domain body angular velocity

timeBodyGyroMean-Y - Average time-domain body angular velocity

timeBodyGyroMean-Z - Average time-domain body angular velocity

timeBodyGyro-std-X - Standard deviation of the time-domain body angular velocity 

timeBodyGyro-std-Y - Standard deviation of the time-domain body angular velocity 

timeBodyGyro-std-Z - Standard deviation of the time-domain body angular velocity 

timeBodyGyroJerkMean-X - Average time-domain body angular velocity jerk (derivation of the angular velocity in time) 

timeBodyGyroJerkMean-Y - Average time-domain body angular velocity jerk (derivation of the angular velocity in time) 

timeBodyGyroJerkMean-Z - Average time-domain body angular velocity jerk (derivation of the angular velocity in time) 

timeBodyGyroJerk-std-X - Standard deviation of the time-domain body angular velocity jerk (derivation of the angular velocity in time) 

timeBodyGyroJerk-std-Y - Standard deviation of the time-domain body angular velocity jerk (derivation of the angular velocity in time) 

timeBodyGyroJerk-std-Z - Standard deviation of the time-domain body angular velocity jerk (derivation of the angular velocity in time) 

timeBodyAccMagnitudeMean - Average of the time-domain magnitude of body acceleration

timeBodyAccMagnitudeStdDev - Standard deviation of the time-domain magnitude of body acceleration

timeGravityAccMagnitudeMean - Average of the time-domain magnitude of gravity acceleration

timeGravityAccMagnitudeStdDev - Standard deviation of the time-domain magnitude of gravity acceleration

timeBodyAccJerkMagnitudeMean - Average of the time-domain magnitude of body acceleration jerk (derivation of the acceleration in time)

timeBodyAccJerkMagnitudeStdDev - Standard deviation of the time-domain magnitude of body acceleration jerk (derivation of the acceleration in time)

timeBodyGyroMagnitudeMean - Average of the time-domain magnitude of body angular velocity

timeBodyGyroMagnitudeStdDev - Standard deviation of the time-domain magnitude of body angular velocity

timeBodyGyroJerkMagnitudeMean - Average of the time-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time)

timeBodyGyroJerkMagnitudeStdDev	- Standard deviation of the time-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time)

freqBodyAccMean-X - Average frequency-domain body acceleration

freqBodyAccMean-Y - Average frequency-domain body acceleration

freqBodyAccMean-Z - Average frequency-domain body acceleration

freqBodyAcc-std-X - Standard deviation of the frequency-domain body acceleration

freqBodyAcc-std-Y - Standard deviation of the frequency-domain body acceleration

freqBodyAcc-std-Z - Standard deviation of the frequency-domain body acceleration

freqBodyAccMeanFreq-X - Weighted average of the frequency components of the frequency-domain body acceleration

freqBodyAccMeanFreq-Y - Weighted average of the frequency components of the frequency-domain body acceleration

freqBodyAccMeanFreq-Z - Weighted average of the frequency components of the frequency-domain body acceleration

freqBodyAccJerkMean-X - Average frequency-domain body acceleration jerk (derivation of the acceleration in time) 

freqBodyAccJerkMean-Y - Average frequency-domain body acceleration jerk (derivation of the acceleration in time) 

freqBodyAccJerkMean-Z - Average frequency-domain body acceleration jerk (derivation of the acceleration in time) 

freqBodyAccJerk-std-X - Standard deviation of the frequency-domain body acceleration jerk (derivation of the acceleration in time)

freqBodyAccJerk-std-Y - Standard deviation of the frequency-domain body acceleration jerk (derivation of the acceleration in time)

freqBodyAccJerk-std-Z - Standard deviation of the frequency-domain body acceleration jerk (derivation of the acceleration in time)

freqBodyAccJerkMeanFreq-X - Weighted average of the frequency components of the frequency-domain body acceleration jerk (derivation of the acceleration in time)

freqBodyAccJerkMeanFreq-Y - Weighted average of the frequency components of the frequency-domain body acceleration jerk (derivation of the acceleration in time)

freqBodyAccJerkMeanFreq-Z - Weighted average of the frequency components of the frequency-domain body acceleration jerk (derivation of the acceleration in time)

freqBodyGyroMean-X - Average frequency-domain body angular velocit

freqBodyGyroMean-Y - Average frequency-domain body angular velocit

freqBodyGyroMean-Z - Average frequency-domain body angular velocit

freqBodyGyro-std-X - Standard deviation of the frequency-domain body angular velocity

freqBodyGyro-std-Y - Standard deviation of the frequency-domain body angular velocity

freqBodyGyro-std-Z - Standard deviation of the frequency-domain body angular velocity

freqBodyGyroMeanFreq-X - Weighted average of the frequency components of the frequency-domain body angular velocity 

freqBodyGyroMeanFreq-Y - Weighted average of the frequency components of the frequency-domain body angular velocity 

freqBodyGyroMeanFreq-Z - Weighted average of the frequency components of the frequency-domain body angular velocity 

freqBodyAccMagnitudeMean - Average of the frequency components of the frequency-domain magnitude of body acceleration:

freqBodyAccMagnitudeStdDev - Standard deviation of the frequency components of the frequency-domain magnitude of body acceleration:

freqBodyAccMagnitudeMeanFreq - Weighted average of the frequency components of the frequency-domain magnitude of body acceleration:

freqBodyAccJerkMagnitudeMean - Average of the frequency components of the frequency-domain magnitude of body acceleration jerk (derivation of the acceleration in time)

freqBodyAccJerkMagnitudeStdDev - Standard deviation of the frequency components of the frequency-domain magnitude of body acceleration jerk (derivation of the acceleration in time)

freqBodyAccJerkMagnitudeMeanFreq - Weighted average of the frequency components of the frequency-domain magnitude of body acceleration jerk (derivation of the acceleration in time)	

freqBodyGyroMagnitudeMean - Average of the frequency components of the frequency-domain magnitude of body angular velocity

freqBodyGyroMagnitudeStdDev - Standard deviation of the frequency components of the frequency-domain magnitude of body angular velocity

freqBodyGyroMagnitudeMeanFreq - Weighted average of the frequency components of the frequency-domain magnitude of body angular velocity

freqBodyGyroJerkMagnitudeMean - Average of the frequency components of the frequency-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time)

freqBodyGyroJerkMagnitudeStdDev - Standard deviation of the frequency components of the frequency-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time)

freqBodyGyroJerkMagnitudeMeanFreq - Weighted average of the frequency components of the frequency-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time)
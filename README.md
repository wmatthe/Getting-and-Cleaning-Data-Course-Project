Getting and Cleaning Data Course Project
========================================

The purpose of the project is to demonstrate the ability to collect, work with, and clean a data set. In order to successfully complete the project you will need to do the following:

1. Import the data
2. Merge the data into one data set
3. Extract only measurements for mean and standard deviation
4. Update the data to use descriptive names for the activities and the varaibles
5. Create a second tidy data set with the average of each variable for each activity and each subject. 
6. Create a code book that indicates the variables, units, and summaries calculated. 
7. Create a README file that explains the analysis. 
8. Create an R script file called run_analysis.R that contains the code to complete the analysis and crate the tidy dataset. 

The R script, tidy data set, README, and Code book should be uploaded to a Github repository so you peers can access your work. 


About the data
==============

The data was collected from the Samsung Galaxy 5 smartphone accelerometer and gyroscope app worn by 30 volunteers. Each volunteer performed six activities (walking, walking_upstairs, walking_downstairs, 
sitting, standing, laying). The smart phone recorded body movements for each subject while performing the six activities.   

A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 


Project Steps
============

1.Merge the training and the test sets to create one data set.

	1.1 Downloaded zip file and unzipped using unzip function. 
	1.2 Read the following files into R:

		• features.txt		# Lists all the features i.e. measurements (ex. mean, s.d, var) from the data 
		• activity_labels.txt	# Lists six activities performed in the experiement
		• subject_train.txt	# Lists id of subject that performed the activity
		• x_train.txt		# File containing observations in the train foler
		• y_train.txt		# Activity labels for each observation in the x_train data set
		• subject_test.txt	# Lists id of subject that performed the activity
		• x_test.txt		# File containing observations in the test foler
		• y_test.txt		# Activity labels for each observation in the x_test data set

	1.3 Merge to create one dataset. 

2.Extract only the measurements on the mean and standard deviation for each measurement. 

	2.1 Use grep function to subset the data to include only subject id, activity, mean, & standard deviation columns.


3.Use descriptive activity names to name the activities in the data set.
	
	3.1 Use join function from plyr package to join the data to the activity labels. 

4.Appropriately label the data set with descriptive variable names. 

	4.1 Remove unnecessary punctuation and make variable names more descriptiive. 

5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

	5.1 Used the ddply function to subset the data and take the average of each variable for each avtivity and each subject. 
	5.2 Exported tidyData set to a text file. 


License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

# 1. Merge the training and the test sets to create one data set.

# install Downloader package from CRAN to download & unzip zip file. 
install.packages("downloader")

# Download zip file and extract files for zip archive. 
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" 
download.file(url, destfile = "dataset.zip")
unzip("dataset.zip", exdir = ".")

# Set wd for main files
setwd("C:/Users/Bill/Documents/Coursera/JohnsHopkins/Course 3 - Getting and Cleaning Data/zCourse Project/UCI HAR Dataset")
getwd()

# Load files in main folder to view data
activity <- read.table("./activity_labels.txt", header = FALSE, sep = "")
features <- read.table("./features.txt", header = FALSE, sep = "")

# View data in loaded dataframes. 

View(activity)   # Lists six activities performed in the experiement
View(features)   # Lists all the features i.e. measurements (ex. mean, s.d, var) from the data 

# Load files in train folder to view data
subj_train <- read.table("./train/subject_train.txt", header = FALSE, sep = "")
xtrain <- read.table("./train/X_train.txt", header = FALSE, sep = "")
ytrain <- read.table("./train/y_train.txt", header = FALSE, sep = "")

# View data in loaded dataframes. 

View(subj_train)  # Lists id of subject that performed the activity
View(xtrain)      # File containing observations in the train foler
View(ytrain)      # Activity labels for each observation in the xtrain data frame. 

dim(subj_train)  # 
dim(xtrain)      # 
dim(ytrain)      #  

# Assign column names to the imported data. 

colnames(activity) <- c("activityId", "activityType")
colnames(subj_train) <- c("subjectId")
colnames(xtrain) <- features[,2]
colnames(ytrain) <- c("activityId")

# Use merge function to match the activity id to the activity type. 

ytrain <- merge(ytrain, activity, by ='activityId', all.x = TRUE)
View(ytrain)

# Combine all train data into one file. 

trainData <- cbind(subj_train, ytrain, xtrain)
View(trainData)
dim(trainData)

# Repeat the steps above to creat one file for the test data

# Load files in test folder to view data
subj_test <- read.table("./test/subject_test.txt", header = FALSE, sep = "")
xtest <- read.table("./test/X_test.txt", header = FALSE, sep = "")
ytest <- read.table("./test/y_test.txt", header = FALSE, sep = "")

# View data in loaded dataframes. 

View(subj_test)  # Lists id of subject that performed the activity
View(xtest)      # File containing observations in the test foler
View(ytest)      # Activity labels for each observation in the xtest data frame. 

# Assign column names to the imported data. 

colnames(activity) <- c("activityId", "activityType")
colnames(subj_test) <- c("subjectId")
colnames(xtest) <- features[,2]
colnames(ytest) <- c("activityId")

# Use merge function to match the activity id to the activity type. 

ytest <- merge(ytest, activity, by ='activityId', all.x = TRUE)
View(ytest)

# Combine all test data into one file. 

testData <- cbind(subj_test, ytest, xtest)
View(testData)
dim(testData)

# Combine train and test data to create one dataset. 

combinedData <- rbind(trainData, testData)
View(combinedData)
dim(combinedData)

# 2. Extract only the measurements on the mean and standard deviation for each measurement. 

# Create a vector of the column names from combinedData that will be used to select 
# the columns that contain mean or std. dev. in the header. 

colNames <- colnames(combinedData)

# Create a logicalVector that contains TRUE values for the ID, mean() & stddev() columns and FALSE for others

logicalVector <- (grepl("activity..", colNames) | grepl("subject..",colNames) | 
                          grepl("..mean..",colNames) | grepl("..std..",colNames))

# Subset the combinedData table to keep only columns listed as "TRUE" in logicalVector

wantedData = combinedData[logicalVector==TRUE]
View(wantedData)
dim(wantedData)

# 3.Uses descriptive activity names to name the activities in the data set
# Done in step 1 when combining activityId with activityType.

# 4. Appropriately label the data set with descriptive variable names. 

# Use for loop and gsub function to make variable names more descriptive. 

colNames2 <- colnames(wantedData)

for (i in 1:length(colNames2)) 
        
{
        colNames2[i] = gsub("\\()","",colNames2[i])
        colNames2[i] = gsub("-std$","StdDev",colNames2[i])
        colNames2[i] = gsub("-mean","Mean",colNames2[i])
        colNames2[i] = gsub("^(t)","time",colNames2[i])
        colNames2[i] = gsub("^(f)","freq",colNames2[i])
        colNames2[i] = gsub("([Gg]ravity)","Gravity",colNames2[i])
        colNames2[i] = gsub("([Bb]ody[Bb]ody|[Bb]ody)","Body",colNames2[i])
        colNames2[i] = gsub("[Gg]yro","Gyro",colNames2[i])
        colNames2[i] = gsub("AccMag","AccMagnitude",colNames2[i])
        colNames2[i] = gsub("([Bb]odyaccjerkmag)","BodyAccJerkMagnitude",colNames2[i])
        colNames2[i] = gsub("JerkMag","JerkMagnitude",colNames2[i])
        colNames2[i] = gsub("GyroMag","GyroMagnitude",colNames2[i])
        
}

# Assign descriptive variable names to combinedData file. 

colnames(wantedData) <- colNames2
View(wantedData)
dim(wantedData)

# 5. From the data set in step 4, create a second, independent tidy data set with the 
# average of each variable for each activity and each subject.

# Subset the wantedData data frame and computed average of each variable for each activity
# and each subject using the aggregate function. 

tidyData <- aggregate(. ~subjectId + activityId, wantedData, mean)
tidyData <- tidyData[order(tidyData$subjectId, tidyData$activityId),]
View(tidyData)
dim(tidyData)

# Export the tidyData set to file. 

write.table(tidyData, './tidyData.txt', row.names = TRUE, sep = '\t')


# Produce Codebook
library(knitr)
knit2html('codebook.rmd')
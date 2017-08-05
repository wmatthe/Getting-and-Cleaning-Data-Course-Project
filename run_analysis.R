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

# Load activity labels and features files.
activityLabels <- read.table("./activity_labels.txt", col.names = c("ActivityID", "Activity"))
features <- read.table("./features.txt", colClasses = c("character"))

View(activityLabels)
View(features)

# Load files in train folder and combine. 
subj_train <- read.table("./train/subject_train.txt", header = FALSE, sep = "") # subject id
xtrain <- read.table("./train/X_train.txt", header = FALSE, sep = "")           # Data
ytrain <- read.table("./train/y_train.txt", header = FALSE, sep = "")           # Activity id
train <- cbind(subj_train, ytrain, xtrain)

View(train)

# Load files in test folder and combine
subj_test <- read.table("./test/subject_test.txt", header = FALSE, sep = "")
xtest <- read.table("./test/X_test.txt", header = FALSE, sep = "")
ytest <- read.table("./test/y_test.txt", header = FALSE, sep = "")
test <- cbind(subj_test, ytest, xtest)

View(test)

# Merge the train and test data into one dataframe. 
allData <- rbind(train, test)

View(allData)

# Label columns
colnames(allData) <- c("SubjectID", "ActivityID", features[,2])
View(allData)

# 2. Extract only the mean and standard deviation data from the files. 
allData_mean_std <- allData[,grepl("mean|std|SubjectID|ActivityID", names(allData))]

View(allData_mean_std)

# 3. Use descriptive activity names to name the activities in the data set

library(plyr)
allData_mean_std <- join(allData_mean_std, activityLabels, by = "ActivityID", match = "first")
allData_mean_std <- allData_mean_std[,-1]

# 4. Appropriately label the data set with descriptive variable names.

# Remove parentheses from column names.
names(allData_mean_std) <- gsub('\\(|\\)',"",names(allData_mean_std), perl = TRUE)

# Make descriptive names. 

names(allData_mean_std) <- make.names(names(allData_mean_std))

names(allData_mean_std) <- gsub('Acc',"Acceleration",names(allData_mean_std))
names(allData_mean_std) <- gsub('GyroJerk',"AngularAcceleration",names(allData_mean_std))
names(allData_mean_std) <- gsub('Gyro',"AngularSpeed",names(allData_mean_std))
names(allData_mean_std) <- gsub('Mag',"Magnitude",names(allData_mean_std))
names(allData_mean_std) <- gsub('^t',"TimeDomain.",names(allData_mean_std))
names(allData_mean_std) <- gsub('^f',"FrequencyDomain.",names(allData_mean_std))
names(allData_mean_std) <- gsub('\\.mean',".Mean",names(allData_mean_std))
names(allData_mean_std) <- gsub('\\.std',".StandardDeviation",names(allData_mean_std))
names(allData_mean_std) <- gsub('Freq\\.',"Frequency.",names(allData_mean_std))
names(allData_mean_std) <- gsub('Freq$',"Frequency",names(allData_mean_std))

# 5. From the combined data set, create a second, independent tidy data set with the average of 
# each variable for each activity and each subject.

dataAverages <- ddply(allData_mean_std, c("SubjectID", "Activity"), numcolwise(mean))

View(dataAverages)

write.table(dataAverages, file = "tidy.txt")

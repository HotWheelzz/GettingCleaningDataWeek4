# Libraries needed to run program.
library("stringr")
library("stats")
library("dplyr")

# Download file and save it in the working directory
#url: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

#Import into R all file needed
Features <- read.table("UCI HAR Dataset/features.txt", col.names = c("n","FunctionS"))
ActivityPerformed <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("Values", "activity"))

#Test Data
STester <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names = "tester")
xDataTest <- read.table("UCI HAR Dataset/test/X_test.txt", col.names = Features$FunctionS)
yDataTest <- read.table("UCI HAR Dataset/test/y_test.txt", col.names = "Values")
#Train Data
STrain <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names = "tester")
xDataTrain <- read.table("UCI HAR Dataset/train/X_train.txt", col.names = Features$FunctionS)
yDataTrain <- read.table("UCI HAR Dataset/train/y_train.txt", col.names = "Values")


# Merges training and the test data.
xData <- rbind(xDataTrain, xDataTest)
yData <- rbind(yDataTrain, yDataTest)
STesterTarin <- rbind(STrain , STester)
AllCombineData<- cbind(STesterTarin, yData, xData)

#Mean and Standar Deviation from measurement.
CleanData <- AllCombineData %>% select(tester, Values, contains("mean"), contains("std"))

# Name activities in data
CleanData$Values <- ActivityPerformed[CleanData$Values, 2]

#Name all variables
names(CleanData)[2] = "activity"
names(CleanData)<-gsub("Acc", "Accelerometer", names(CleanData))
names(CleanData)<-gsub("Gyro", "Gyroscope", names(CleanData))
names(CleanData)<-gsub("BodyBody", "Body", names(CleanData))
names(CleanData)<-gsub("Mag", "Magnitude", names(CleanData))
names(CleanData)<-gsub("^t", "Time", names(CleanData))
names(CleanData)<-gsub("^f", "Frequency", names(CleanData))
names(CleanData)<-gsub("tBody", "TimeBody", names(CleanData))
names(CleanData)<-gsub("-mean()", "Mean", names(CleanData), ignore.case = TRUE)
names(CleanData)<-gsub("-std()", "STD", names(CleanData), ignore.case = TRUE)
names(CleanData)<-gsub("-freq()", "Frequency", names(CleanData), ignore.case = TRUE)
names(CleanData)<-gsub("angle", "Angle", names(CleanData))
names(CleanData)<-gsub("gravity", "Gravity", names(CleanData))

#New data set wit variables with the average of each variable for each activity and each subject.
NewCleanData <- CleanData %>%
        group_by(tester, activity) %>%
        summarise_all(list(mean))
write.table(NewCleanData, "NewCleanData.txt", row.name=FALSE)



#set directory
setwd("C:/Users/Ashok/Desktop/Coursera/Data Science/3. Getting and Cleaning Data/Project")

#read data
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", colClasses = "factor")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", colClasses = "factor")
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", colClasses = "factor")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", colClasses = "factor")

#train and test datasets
train <- cbind(X_train, subject_train, y_train)
test <- cbind(X_test, subject_test, y_test)

#Merge the train and test sets to create one dataset
dataset <- rbind(train, test)

#name the columns
features <- read.table("./UCI HAR Dataset/features.txt")
columnnames <- features$V2
names(dataset) <- columnnames
names(dataset)[562:563] <- c("subject", "activity")

#filter the mean and standard deviation columns
logicalvector <- grep("mean\\()|std\\()|subject|activity", names(dataset))
finaldataset <- dataset[,logicalvector]

#read activity labels
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
library(dplyr)

#Assign descriptive activity names to the activities
finaldataset$activity <- factor(finaldataset$activity, 
                                    levels = c(1,2,3,4,5,6), 
                                    labels = activity_labels$V2)


#convert the column names to lowercase
variablenames <- tolower(names(finaldataset))

#assign descriptive variable names
variablenames <- gsub("^t", "Time", variablenames)
variablenames <- gsub("^f", "Frequency", variablenames)
variablenames <- gsub("mag", "_Magnitude", variablenames)
variablenames <- gsub("\\()", "", variablenames)
variablenames <- gsub("-mean", "_Mean", variablenames)
variablenames <- gsub("-std", "_StdDev", variablenames)
variablenames <- gsub("body", "_Body", variablenames)
variablenames <- gsub("acc", "_Acceleration", variablenames)
variablenames <- gsub("gravity", "_Gravity", variablenames)
variablenames <- gsub("gyro", "_Gyro", variablenames)
variablenames <- gsub("jerk", "_Jerk", variablenames)
variablenames <- gsub("-x", "_Xdirection", variablenames)
variablenames <- gsub("-y", "_Ydirection", variablenames)
variablenames <- gsub("-z", "_Zdirection", variablenames)

#replace the variable names in the table
names(finaldataset) <- variablenames

#create a second, independent tidy data set with the average of each variable for each activity and each subject.
tidydataset <- aggregate(. ~subject + activity, finaldataset, mean)

#write into text document
write.table(tidydataset, "./tidyData.txt", row.name=FALSE)

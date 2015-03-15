# install packages if they don't exist
if("dplyr" %in% rownames(installed.packages()) == FALSE) {install.packages("dplyr")}
if("tidyr" %in% rownames(installed.packages()) == FALSE) {install.packages("tidyr")}
if("reports" %in% rownames(installed.packages()) == FALSE) {install.packages("reports")}

# load libraries
library(dplyr)
library(tidyr)
library(reports)


# 1. Merges the training and the test sets to create one data set.
mergeDataSets <- function() {
  # Makes sure the date is available and if it isn't fetch it
  if(!file.exists("UCI HAR Dataset")) {
    zipFileName <- "UCI HAR Dataset.zip"
    download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", 
                  destfile=zipFileName, method="curl", mode="wb")
    unzip(zipFileName, exdir="./")
    rm(zipFileName)
  }
  
  train.subject <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names="subject")
  train.y <- read.table("UCI HAR Dataset/train/y_train.txt", col.names="activity")
  train.x <- read.table("UCI HAR Dataset/train/X_train.txt")
  
  test.subject <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names="subject")
  test.y <- read.table("UCI HAR Dataset/test/y_test.txt", col.names="activity")
  test.x <- read.table("UCI HAR Dataset/test/X_test.txt")
  
  data <- rbind(cbind(train.subject, train.y, train.x), cbind(train.subject, train.y, train.x))
  data
}

# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
extractMeasurements <- function(data) {
  features <- read.table("UCI HAR Dataset/features.txt", col.names=c("id", "label"))
  # add labels to the data
  names(data) <- c("subject", "activity.id", as.character(features$label))
  # filter the data by columns which contain the subject, activity, mean(), or std() in their name
  # returns the extracted data
  data[ , grepl("subject|activity|mean\\(\\)|std\\(\\)", names(data))]
}

# 3. Uses descriptive activity names to name the activities in the data set
applyActivityNames <- function(data) {
  activity <- read.table("UCI HAR Dataset/activity_labels.txt", col.names=c("id", "label"))
  # Remove _ and then title case the words to make the labels more human readable.
  # e.g. WALKING_DOWNSTAIRS -> WALKING DOWNSTAIRS -> Walking Downstairs
  # Note: CA is from the reports package
  activity$label <- CA(sub("_", " ", activity$label))
  # use the activity.id to look up the activity label and append it to the data set
  data$activity <- sapply(data$activity.id, FUN=function(x) {as.character(activity[x, "label"])})
  # remove the activity.id column to avoid confusion
  # returns a dataset with the applied names
  subset(data, select=-activity.id)
}

# 4. Appropriately labels the data set with descriptive variable names.
labelDataSetWithDescriptiveNames <- function(data) {
  cleanedNames <- names(data)
  cleanedNames <- gsub("^t", "time-", cleanedNames)
  cleanedNames <- gsub("^f", "frequency-", cleanedNames)
  cleanedNames <- gsub("\\(\\)", "", cleanedNames)
  cleanedNames <- gsub("Acc", "Accelerometer", cleanedNames)
  cleanedNames <- gsub("Gyro", "Gyroscope", cleanedNames)
  cleanedNames <- gsub("Mag", "Magnitude", cleanedNames)
  cleanedNames <- gsub("BodyBody", "Body", cleanedNames)
  cleanedNames <- gsub("([A-Z])", "-\\1", cleanedNames)
  cleanedNames <- gsub("--", "-", cleanedNames)
  cleanedNames <- gsub("(.*-[XYZ])", "\\1-Axis", cleanedNames)
  names(data) <- cleanedNames
  # returns the dataset with the names applied
  data
}

# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
createTidyDataSetWithAverageForEachColumn <- function (data) {
  tidy_data <- tbl_df(data) %>%
    group_by(subject, activity) %>%
    summarise_each(funs(mean)) %>%
    gather(measurement, mean, -activity, -subject)
  
  # Save the data into the file
  write.table(tidy_data, file="tidy_data.txt", row.name=FALSE)
  # returns the tidy data
  tidy_data
}

# This is the code that drives the analysis
mergedActivityData <- mergeDataSets() # Step #1
mergedActivityData <- extractMeasurements(mergedActivityData) # Step #2
mergedActivityData <- applyActivityNames(mergedActivityData) # Step #3
mergedActivityData <- labelDataSetWithDescriptiveNames(mergedActivityData) # Step #4
tidy_data <- createTidyDataSetWithAverageForEachColumn(mergedActivityData) # Step #5


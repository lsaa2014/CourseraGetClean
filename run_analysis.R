## Download  unzip and load this file on you directory
## https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 


setwd(".~/dataAn/getandclean/UCI HAR Dataset") ## Set the working directory
library(reshape2) ## Load the library

## Read all the data file
subjectest <- read.table("subject_test.txt", col.names = "Subject")
subjectrain <- read.table("subject_train.txt", col.names = "Subject")
trainlabel <- read.table("y_train.txt", col.names = "Code")
testlabel <- read.table("y_test.txt", col.names = "Code")
features <- read.table("features.txt")

## Extracts only the measurements on the mean and standard deviation. 
subsetfeatures <- grep("mean\\(|std\\(", features[, 2])

## read training, testing set and the activity data
train <- read.table("X_train.txt")
test <- read.table("X_test.txt")
activitylabel <- read.table("activity_labels.txt", col.names = c("Code", "Label"))

## Merging training set and test set
activity <- rbind(train, test)

## Set the names of the variables
colnames(activity) <- features[,2]
subsetactivity <- activity[,subsetfeatures]

## Merging the subject training set and test set
subjectset <- rbind(subjectrain, subjectest)

## Merging the label of training set and test set
label <- rbind(trainlabel, testlabel)

## Merging the colomns of subject,label and test set
alldf <- cbind(subjectset, label, subsetactivity)

## Setting the activity label
alldf$Code <- factor(alldf$Code,levels=activitylabel$Code, label=activitylabel$Label)
names(alldf)[2] <- "Activity"

## Melting the data set
meltalldf<-melt(alldf, id=c("Subject", "Activity"))

## Tidying the data set
tidydata <- dcast(meltalldf, Activity + Subject ~ variable, mean)
View(tidydata)

## Writing the new data
write.table(tidydata, "TidydataSamsung.txt", sep="\t", row.name=FALSE)
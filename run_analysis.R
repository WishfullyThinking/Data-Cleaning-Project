library(dplyr)
library(data.table)
## The data is assumed to be already downloaded. The following steps read in the data. 
## First we read in the data from the train dataset.

setwd("C:/Users/Aditya/Documents/datasciencecoursera/Cleaning Data/Course Project/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset")
X_train<-read.table("./train/X_train.txt")
y_train<-read.table("./train/y_train.txt")
subject_train<-read.table("./train/subject_train.txt")

## Next, read in the data from the test dataset.

X_test<-read.table("./test/X_test.txt")
y_test<-read.table("./test/y_test.txt")
subject_test<-read.table("./test/subject_test.txt")

## We create the combined activity column and rename it
## using the "activity_labels" text file.

activity<-rbind(y_train, y_test)
activity_labels<-read.table("./activity_labels.txt")
for(i in 1:6){
  activity[activity==(as.character(i))]<-activity_labels[i, 2]
}

## We start combining the other datasets. We bind the subject
## and value datasets from both train and test.
## Then we bind the subject, activity, and value datasets
## to form our combined dataset.

subjectdata<-rbind(subject_train, subject_test)
valuedata<-rbind(X_train, X_test)
mainset<-cbind(subjectdata, activity, valuedata)

## We relabel the column names to make it tidy.
## We do this by directly reading in all the 
## values from the features text file.

features<-read.table("./features.txt")
names(mainset)[-(1:2)]<-features$V2
names(mainset)[1]<-"Subject"
names(mainset)[2]<-"Activity"

## We select ONLY the variables with "mean()"
## or "std()" in them. 
sel<-select(mainset, c("Subject", "Activity")|contains(c("mean()", "std()")))
sel<-sel[order(sel$Subject, sel$Activity),]


## In this last step, we melt the data and then 
## recast it to find the mean for each 
##subject-activity-measurement combination.
melted <- melt(sel, id = c("Subject", "Activity"))
tidyData <- dcast(melted, Subject + Activity ~ variable, mean)

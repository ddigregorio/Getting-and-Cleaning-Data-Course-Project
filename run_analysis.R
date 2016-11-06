library(data.table)
## source("run_analysis.r")

## DATA IS LOCATED HERE
## url= "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
## figure this out later, not required by the project
## f <- file.path(getwd(), "smartPhone.zip")
## download.file(url, f)

## 30 people - 70% for training and 30% for testing

## Data set <- UCI HAR Dataset/test/X_test.txt and UCI HAR Dataset/train/X_train.txt
## ROW Labels <- "UCI HAR Dataset/test/y_test.txt" and  "UCI HAR Dataset/train/y_train.txt"
## 1. Merges the training and the test sets to create one data set.

testlblfile = "UCI HAR Dataset/test/y_test.txt" 
testdatafile = "UCI HAR Dataset/test/X_test.txt"
testsubfile = "UCI HAR Dataset/test/subject_test.txt"

trainlblfile = "UCI HAR Dataset/train/y_train.txt"
traindatafile = "UCI HAR Dataset/train/X_train.txt"
trainsubfile = "UCI HAR Dataset/train/subject_train.txt"

datanamesfile = "UCI HAR Dataset/features.txt"

# Load data into memory
testlbl = data.table(read.table(testlblfile))
testdata = data.table(read.table(testdatafile))
testsub = data.table(read.table(testsubfile))

trainlbl = data.table(read.table(trainlblfile))
traindata = data.table(read.table(traindatafile))
trainsub = data.table(read.table(trainsubfile))

datanames = data.table(read.table(datanamesfile))

#print (dim(testdata))
#print (dim(traindata))
#print (dim(trainsub))
#print (dim(datanames))

### features.txt contains the column names for X(data) type files

# combine like data
lbl = rbind(testlbl, trainlbl)
data = rbind(testdata, traindata)
sub = rbind(testsub, trainsub)

# add the names
names(lbl) = c("activity")
names(sub) = c("subject")
oldnames = names(data)
datanamescharvec = datanames[[2]]
setnames(data,oldnames, as.character(datanamescharvec))

#print (dim(lbl))
#print (dim(data))
#print (dim(sub))

# combine the tables
masterdt = cbind(sub, data)
masterdt = cbind(lbl, masterdt)
#print (dim(masterdt))

# clear the initial data.tables
rm(lbl)
rm(data)
rm(sub)
rm(datanames)
rm(testsub)
rm(testdata)
rm(testlbl)
rm(traindata)
rm(trainlbl)
rm(trainsub)
  
# THIS IS THE COMPLETE TABLE!
#masterdt 


## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
df=masterdt[,grep("mean\\(\\)|std\\(\\)",names(masterdt), value = TRUE)] 
meanstdofmaster = subset(masterdt, select= c("subject", "activity", as.character(df)))


## 3. Uses descriptive activity names to name the activities in the data set
#**********   BUT IN WHICH DATA SET??????? ******************
#1 WALKING
#2 WALKING_UPSTAIRS
#3 WALKING_DOWNSTAIRS
#4 SITTING
#5 STANDING
#6 LAYING
#masterdt$activity=as.character(masterdt$activity)

masterdt$activity[masterdt$activity == 1 ] <- "WALKING"
meanstdofmaster$activity[meanstdofmaster$activity == 1 ] <- "WALKING"
masterdt$activity[masterdt$activity == 2 ] <- "WALKING_UPSTAIRS"
meanstdofmaster$activity[meanstdofmaster$activity == 2 ] <- "WALKING_UPSTAIRS"
masterdt$activity[masterdt$activity == 3 ] <- "WALKING_DOWNSTAIRS"
meanstdofmaster$activity[meanstdofmaster$activity == 3 ] <- "WALKING_DOWNSTAIRS"
masterdt$activity[masterdt$activity == 4 ] <- "SITTING"
meanstdofmaster$activity[meanstdofmaster$activity == 4 ] <- "SITTING"
masterdt$activity[masterdt$activity == 5 ] <- "STANDING"
meanstdofmaster$activity[meanstdofmaster$activity == 5 ] <- "STANDING"
masterdt$activity[masterdt$activity == 6 ] <- "LAYING"
meanstdofmaster$activity[meanstdofmaster$activity == 6 ] <- "LAYING"



## 4. Appropriately labels the data set with descriptive variable names.

names(meanstdofmaster)= gsub("Acc", "Accelerator", names(meanstdofmaster) )
names(masterdt) = gsub("Acc", "Accelerator", names(masterdt) )

names(meanstdofmaster)= gsub("Gryo", "Gyroscope", names(meanstdofmaster) )
names(masterdt) = gsub("Gyro", "Gyroscope", names(masterdt))

names(meanstdofmaster)= gsub("^t", "time", names(meanstdofmaster) )
names(masterdt) = gsub("^t", "time", names(masterdt) )

names(meanstdofmaster)= gsub("^f", "frequency", names(meanstdofmaster) )
names(masterdt) = gsub("^f", "frequency", names(masterdt) )

names(meanstdofmaster)= gsub("mag", "Magnitude", names(meanstdofmaster) )
names(masterdt) = gsub("mag", "Magnitude", names(masterdt) )



## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
# .SD means to perform on the data frame minus the cols in the by=c(). .SD = (S)ubset(D)ata
tidy = masterdt[,lapply(.SD,mean  ), by=c("activity","subject") ]
tidy2 = meanstdofmaster[,lapply(.SD,mean  ), by=c("activity","subject") ]

write.csv(tidy2, file = "tidy.csv")

tidy2





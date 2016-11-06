#CodeBook for Week 4 Assignment

###Orignial Location of Data
This analysis uses uses this data set -> https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

###Obtained from the website -> http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones



##The Data 
Data Files Used
- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 


##Processing the Dataset
The original data is condensed from multiple files to produce a datatable with descriptive and fully qualified (spelled) variable names. 
Fully spelled variable names are as follows. 
* "Acc" is now "Accelerator"
* "Gryo" is now "Gyroscopescope"
* "t" is now "time" this only occurs at the begining of a variable name
* "f" is now "frequency" this only occurs at the begining of a variable name
* "mag" is now "Magnitude"
The list of variable (feature) definitions is located in features_info.txt and features.txt

Additionally 2 columns are added to the front of the dataset "subject" and "acivity"
* subject is the identification of the participant (1-30)
* acivity is the identification of the 6 different activities performed by each of the participants. They are aas follows:
    1 WALKING
    2 WALKING_UPSTAIRS
    3 WALKING_DOWNSTAIRS
    4 SITTING
    5 STANDING
    6 LAYING

The dataset was reduced to only calculate mean per subject per activity for each feature column of mean and standard deviation

Finally the tidy dataset was output to tidy.txt 

##Variables
activity 
    - action being performed (  1 WALKING, 2 WALKING_UPSTAIRS, 3 WALKING_DOWNSTAIRS, 4 SITTING, 5 STANDING,6 LAYING)
subject
    - The person doing the activity 1-30
timeBodyAccelerator-mean()-X
    - mean value
timeBodyAccelerator-mean()-Y
    - mean value
timeBodyAccelerator-mean()-Z
    - mean value
timeBodyAccelerator-std()-X
    - standard deviation value
timeBodyAccelerator-std()-Y
    - standard deviation value
timeBodyAccelerator-std()-Z
    - standard deviation value
timeGravityAccelerator-mean()-X
    - mean value
timeGravityAccelerator-mean()-Y
    - mean value
timeGravityAccelerator-mean()-Z
    - mean value
timeGravityAccelerator-std()-X
    - standard deviation value
timeGravityAccelerator-std()-Y
    - standard deviation value
timeGravityAccelerator-std()-Z
    - standard deviation value
timeBodyAcceleratorJerk-mean()-X
    - mean value
timeBodyAcceleratorJerk-mean()-Y
    - mean value
timeBodyAcceleratorJerk-mean()-Z
    - mean value
timeBodyAcceleratorJerk-std()-X
    - standard deviation value
timeBodyAcceleratorJerk-std()-Y
    - standard deviation value
timeBodyAcceleratorJerk-std()-Z
    - standard deviation value
timeBodyGyroscope-mean()-X
    - mean value
timeBodyGyroscope-mean()-Y
    - mean value
timeBodyGyroscope-mean()-Z
    - mean value
timeBodyGyroscope-std()-X
    - standard deviation value
timeBodyGyroscope-std()-Y
    - standard deviation value
timeBodyGyroscope-std()-Z
    - standard deviation value
timeBodyGyroscopeJerk-mean()-X
    - mean value
timeBodyGyroscopeJerk-mean()-Y
    - mean value
timeBodyGyroscopeJerk-mean()-Z
    - mean value
timeBodyGyroscopeJerk-std()-X
    - standard deviation value
timeBodyGyroscopeJerk-std()-Y
    - standard deviation value
timeBodyGyroscopeJerk-std()-Z
    - standard deviation value
timeBodyAcceleratorMag-mean()
    - mean value
timeBodyAcceleratorMag-std()
    - standard deviation value
timeGravityAcceleratorMag-mean()
    - mean value
timeGravityAcceleratorMag-std()
    - standard deviation value
timeBodyAcceleratorJerkMag-mean()
    - mean value
timeBodyAcceleratorJerkMag-std()
    - standard deviation value
timeBodyGyroscopeMag-mean()
    - mean value
timeBodyGyroscopeMag-std()
    - standard deviation value
timeBodyGyroscopeJerkMag-mean()
    - mean value
timeBodyGyroscopeJerkMag-std()
    - standard deviation value
frequencyBodyAccelerator-mean()-X
    - mean value
frequencyBodyAccelerator-mean()-Y
    - mean value
frequencyBodyAccelerator-mean()-Z
    - mean value
frequencyBodyAccelerator-std()-X
    - standard deviation value
frequencyBodyAccelerator-std()-Y
    - standard deviation value
frequencyBodyAccelerator-std()-Z
    - standard deviation value
frequencyBodyAcceleratorJerk-mean()-X
    - mean value
frequencyBodyAcceleratorJerk-mean()-Y
    - mean value
frequencyBodyAcceleratorJerk-mean()-Z
    - mean value
frequencyBodyAcceleratorJerk-std()-X
    - standard deviation value
frequencyBodyAcceleratorJerk-std()-Y
    - standard deviation value
frequencyBodyAcceleratorJerk-std()-Z
    - standard deviation value
frequencyBodyGyroscope-mean()-X
    - mean value
frequencyBodyGyroscope-mean()-Y
    - mean value
frequencyBodyGyroscope-mean()-Z
    - mean value
frequencyBodyGyroscope-std()-X
    - standard deviation value
frequencyBodyGyroscope-std()-Y
    - standard deviation value
frequencyBodyGyroscope-std()-Z
    - standard deviation value
frequencyBodyAcceleratorMag-mean()
    - mean value
frequencyBodyAcceleratorMag-std()
    - standard deviation value
frequencyBodyBodyAcceleratorJerkMag-mean()
    - mean value
frequencyBodyBodyAcceleratorJerkMag-std()
    - standard deviation value
frequencyBodyBodyGyroscopeMag-mean()
    - mean value
frequencyBodyBodyGyroscopeMag-std()
    - standard deviation value
frequencyBodyBodyGyroscopeJerkMag-mean()
    - mean value
frequencyBodyBodyGyroscopeJerkMag-std()
    - standard deviation value





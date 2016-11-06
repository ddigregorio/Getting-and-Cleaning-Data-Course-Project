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
* "Gryo" is now "Gyroscope"
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

Finally the tidy dataset was output to tidy.csv




# Codebook

### Description of Dataset

The tidy dataset can be found in new_tidy_dataset.txt inside the project folder. The dataset consists of the mean values of several spatial variables related to measurements from the accelerometers and gyroscopes of 30 Samsung Galaxy S phones each of which was handled by a subject. The measurements were taken when the subject was WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, and LAYING. The mean values are taken for each subject while carrying out the 6 different activities, giving us a total of 180 rows in the dataset (30 x 6).

### Variables

* subject                             : integer ( 0-30 )
* activity                            : nominal (WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING)
* tBodyAcc-mean()-X                   : continous numerical
* tBodyAcc-mean()-Y                   : continous numerical
* tBodyAcc-mean()-Z                   : continous numerical
* tGravityAcc-mean()-X                : continous numerical
* tGravityAcc-mean()-Y                : continous numerical
* tGravityAcc-mean()-Z                : continous numerical
* tBodyAccJerk-mean()-X               : continous numerical
* tBodyAccJerk-mean()-Y               : continous numerical
* tBodyAccJerk-mean()-Z               : continous numerical
* tBodyGyro-mean()-X                  : continous numerical
* tBodyGyro-mean()-Y                  : continous numerical
* tBodyGyro-mean()-Z                  : continous numerical
* tBodyGyroJerk-mean()-X              : continous numerical
* tBodyGyroJerk-mean()-Y              : continous numerical
* tBodyGyroJerk-mean()-Z              : continous numerical
* tBodyAccMag-mean()                  : continous numerical
* tGravityAccMag-mean()               : continous numerical
* tBodyAccJerkMag-mean()              : continous numerical
* tBodyGyroMag-mean()                 : continous numerical
* tBodyGyroJerkMag-mean()             : continous numerical
* fBodyAcc-mean()-X                   : continous numerical
* fBodyAcc-mean()-Y                   : continous numerical
* fBodyAcc-mean()-Z                   : continous numerical
* fBodyAcc-meanFreq()-X               : continous numerical
* fBodyAcc-meanFreq()-Y               : continous numerical
* fBodyAcc-meanFreq()-Z               : continous numerical
* fBodyAccJerk-mean()-X               : continous numerical
* fBodyAccJerk-mean()-Y               : continous numerical
* fBodyAccJerk-mean()-Z               : continous numerical
* fBodyAccJerk-meanFreq()-X           : continous numerical
* fBodyAccJerk-meanFreq()-Y           : continous numerical
* fBodyAccJerk-meanFreq()-Z           : continous numerical
* fBodyGyro-mean()-X                  : continous numerical
* fBodyGyro-mean()-Y                  : continous numerical
* fBodyGyro-mean()-Z                  : continous numerical
* fBodyGyro-meanFreq()-X              : continous numerical
* fBodyGyro-meanFreq()-Y              : continous numerical
* fBodyGyro-meanFreq()-Z              : continous numerical
* fBodyAccMag-mean()                  : continous numerical
* fBodyAccMag-meanFreq()              : continous numerical
* fBodyBodyAccJerkMag-mean()          : continous numerical
* fBodyBodyAccJerkMag-meanFreq()      : continous numerical
* fBodyBodyGyroMag-mean()             : continous numerical
* fBodyBodyGyroMag-meanFreq()         : continous numerical
* fBodyBodyGyroJerkMag-mean()         : continous numerical
* fBodyBodyGyroJerkMag-meanFreq()     : continous numerical
* angle(tBodyAccMean,gravity)         : continous numerical
* angle(tBodyAccJerkMean),gravityMean): continous numerical
* angle(tBodyGyroMean,gravityMean)    : continous numerical
* angle(tBodyGyroJerkMean,gravityMean): continous numerical
* angle(X,gravityMean)                : continous numerical
* angle(Y,gravityMean)                : continous numerical
* angle(Z,gravityMean)                : continous numerical
* tBodyAcc-std()-X                    : continous numerical
* tBodyAcc-std()-Y                    : continous numerical
* tBodyAcc-std()-Z                    : continous numerical
* tGravityAcc-std()-X                 : continous numerical
* tGravityAcc-std()-Y                 : continous numerical
* tGravityAcc-std()-Z                 : continous numerical
* tBodyAccJerk-std()-X                : continous numerical
* tBodyAccJerk-std()-Y                : continous numerical
* tBodyAccJerk-std()-Z                : continous numerical
* tBodyGyro-std()-X                   : continous numerical
* tBodyGyro-std()-Y                   : continous numerical
* tBodyGyro-std()-Z                   : continous numerical
* tBodyGyroJerk-std()-X               : continous numerical
* tBodyGyroJerk-std()-Y               : continous numerical
* tBodyGyroJerk-std()-Z               : continous numerical
* tBodyAccMag-std()                   : continous numerical
* tGravityAccMag-std()                : continous numerical
* tBodyAccJerkMag-std()               : continous numerical
* tBodyGyroMag-std()                  : continous numerical
* tBodyGyroJerkMag-std()              : continous numerical
* fBodyAcc-std()-X                    : continous numerical
* fBodyAcc-std()-Y                    : continous numerical
* fBodyAcc-std()-Z                    : continous numerical
* fBodyAccJerk-std()-X                : continous numerical
* fBodyAccJerk-std()-Y                : continous numerical
* fBodyAccJerk-std()-Z                : continous numerical
* fBodyGyro-std()-X                   : continous numerical
* fBodyGyro-std()-Y                   : continous numerical
* fBodyGyro-std()-Z                   : continous numerical
* fBodyAccMag-std()                   : continous numerical
* fBodyBodyAccJerkMag-std()           : continous numerical
* fBodyBodyGyroMag-std()              : continous numerical
* fBodyBodyGyroJerkMag-std()          : continous numerical

Further descriptions of these variables is available in 'UCI HAR Dataset/features_info.txt'

### The Raw Data

The Raw data is available inside the 'UCI HAR Dataset' directory.

### How to generate tidy dataset from raw data

To generate the tidy dataset from the raw dataset simply run the run_analysis.R script inside the project folder. The script is well commented. But in summary it goes through the following steps:
1. Merges the training and the test sets to create one data set. The training and test sets can be found in the UCI HAR Datset directory under the train and test directories respectively.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses the activity labels e.g WALKING, etc to label the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates an independent tidy data set with the average of each variable for each activity and each subject.




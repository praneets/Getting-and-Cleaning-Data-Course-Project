#CodeBook for the tidy dataset
Data source

This dataset is derived from the "Human Activity Recognition Using Smartphones Data Set" which was originally made avaiable here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Feature Selection

I refer you to the README and features.txt files in the original dataset to learn more about the feature selection for this dataset. And there you will find the follow description:

The averages are calculated as grouped by SubjectID and ActivityNames for the following variables (XYZ refers to a single axial direction)
TimeBodyAcc mean() XYZ
TimeGravityAcc mean() XYZ
TimeBodyAccJerk mean() XYZ
TimeBodyGyro mean() XYZ
TimeBodyGyroJerk mean() XYZ
TimeBodyAccMag std() XYZ
TimeGravityAccMag std() XYZ
TimeBodyAccJerkMag std() XYZ
TimeBodyGyroMag std() XYZ
TimeBodyGyroJerkMag std() XYZ
FreqBodyAcc mean() XYZ
FreqBodyAccJerk mean() XYZ
FreqBodyGyro meanFreq() XYZ
FreqBodyAccMag std() XYZ
FreqBodyAccJerkMag std() XYZ
FreqBodyGyroMag std() XYZ
FreqBodyGyroJerkMag std() XYZ
The set of variables that were estimated (and kept for this assignment) from these signals are:

mean(): Mean value
std(): Standard deviation

The resulting variable names are of the following form: TimeBodyAcc mean() X, which means the mean value of tBodyAcc-XYZ along the X-direction.FreqBodyAcc mean() X, which means the mean value of tBodyAcc-XYZ along the X-direction.

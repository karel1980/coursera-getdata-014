# CodeBook

The dataset used as input for the script is linked to in the readme. Please follow that link
to get details on the original data.

The dataset which can be produced by the run_analysis.R scriptwhich can be produced by the run_analysis.R scriptwhich can be produced by the run_analysis.R scriptwhich can be produced by the run_analysis.R script

## Groups

 * subject
    A numeric value from 1 to 30 indentifying an indivitual
 * activity
    A factor variable identifying one of the measured activities (standing, laying, walking, walk down stairs, walk up stairs)

## Measurement data

Each subject performed various activities multiple times.
Each (repetition of an) activity produced a series of single-valued descriptors were created (mean, std, skewness, ...). In our result we only worked with the mean and std values.

The result contains the average of these mean and std values, grouped by subject and activity.
The dots in the variable names can be ignored (they are a consequence of R not liking some symbols like brackets in dataframe columns).

The full description of these variables can be derived from the original dataset, so we will omit it here.

 * tBodyAcc.mean...X
 * tBodyAcc.mean...Y
 * tBodyAcc.mean...Z
 * tBodyAcc.std...X
 * tBodyAcc.std...Y
 * tBodyAcc.std...Z
 * tGravityAcc.mean...X
 * tGravityAcc.mean...Y
 * tGravityAcc.mean...Z
 * tGravityAcc.std...X
 * tGravityAcc.std...Y
 * tGravityAcc.std...Z
 * tBodyAccJerk.mean...X
 * tBodyAccJerk.mean...Y
 * tBodyAccJerk.mean...Z
 * tBodyAccJerk.std...X
 * tBodyAccJerk.std...Y
 * tBodyAccJerk.std...Z
 * tBodyGyro.mean...X
 * tBodyGyro.mean...Y
 * tBodyGyro.mean...Z
 * tBodyGyro.std...X
 * tBodyGyro.std...Y
 * tBodyGyro.std...Z
 * tBodyGyroJerk.mean...X
 * tBodyGyroJerk.mean...Y
 * tBodyGyroJerk.mean...Z
 * tBodyGyroJerk.std...X
 * tBodyGyroJerk.std...Y
 * tBodyGyroJerk.std...Z
 * tBodyAccMag.mean..
 * tBodyAccMag.std..
 * tGravityAccMag.mean..
 * tGravityAccMag.std..
 * tBodyAccJerkMag.mean..
 * tBodyAccJerkMag.std..
 * tBodyGyroMag.mean..
 * tBodyGyroMag.std..
 * tBodyGyroJerkMag.mean..
 * tBodyGyroJerkMag.std..
 * fBodyAcc.mean...X
 * fBodyAcc.mean...Y
 * fBodyAcc.mean...Z
 * fBodyAcc.std...X
 * fBodyAcc.std...Y
 * fBodyAcc.std...Z
 * fBodyAccJerk.mean...X
 * fBodyAccJerk.mean...Y
 * fBodyAccJerk.mean...Z
 * fBodyAccJerk.std...X
 * fBodyAccJerk.std...Y
 * fBodyAccJerk.std...Z
 * fBodyGyro.mean...X
 * fBodyGyro.mean...Y
 * fBodyGyro.mean...Z
 * fBodyGyro.std...X
 * fBodyGyro.std...Y
 * fBodyGyro.std...Z
 * fBodyAccMag.mean..
 * fBodyAccMag.std..
 * fBodyBodyAccJerkMag.mean..
 * fBodyBodyAccJerkMag.std..
 * fBodyBodyGyroMag.mean..
 * fBodyBodyGyroMag.std..
 * fBodyBodyGyroJerkMag.mean..
 * fBodyBodyGyroJerkMag.std..

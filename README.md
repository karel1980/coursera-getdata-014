# Description

This repository contains an implementation of the peer-assesment project for 'Getting and Cleaning Data'.
'Getting and Cleaning Data' is part of a series of data science courses by Johns Hopkins University.
More on this series can be found here:

    https://www.coursera.org/specialization/jhudatascience/1

## Details

This project contains an R script which creates a tidy data set from a dataset with human activity measurements (accelerometer, gyro, ...). More information on this dataset can be found here:

    http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Implementation

See run_analysis.R.

The work is broken into a couple of functions to make things easier:

## load_subjects

loads subject data from the subject_{test,train}.txt files

## load_activities

loads subject data from the y_{test,train}.txt files

## load_features

loads measurement data from the X_{test,train}.txt files.
To get meaningful column names we also use features.txt.

## run_analysis

Here is where everything is put together:

First we make sure the file is downloaded.

Next we use the helper functions (load_subjects, load_activities, load_features), and 
glue the results together using cbind an rbind to create df_all. 
df_all is a dataframe containing subject, activity and various mean and std variables
each of which load a piece of the data. Using cbind, the (subject/activity/measurement) data is joined column-wise.
Using rbind the test and train data are joined into one dataset.

Then we select only the mean and std columns. This can be done in 2 ways:
- by searching for 'mean' and 'std' in the column names or,
- by loading the wanted columns from a file, which was created specially for this assignment
(By copying features.txt and removing the lines which we did not want).
I ended up choosing the latter method because it was easier to understand and maintain.

Next we load the labels for the activities from activity_labels.txt.

Finally we use the `aggregate` function to get the mean of the mean/std values,
grouped by subject and activity and write out the result.

The return value of run_analysis is the final dataframe with the grouped mean values,
to allow further analysis.



library(plyr)

load_features<-function(name='test') {
  colNames<-read.table(file='UCI HAR Dataset/features.txt', colClasses=c('integer','character'), header=FALSE, sep=" ")$V2
  features_path<-paste('UCI HAR Dataset', name, paste('X_', name, '.txt',sep=''), sep='/')
  read.table(features_path, col.names=colNames)
}

load_activities<-function(name='test') {
  activities_path<-paste('UCI HAR Dataset', name, paste('y_', name, '.txt',sep=''), sep='/')
  read.table(activities_path, col.names=c('activity'), colClasses = c('factor'))
}

load_subjects<-function(name='test') {
  subjects_path<-paste('UCI HAR Dataset', name, paste('subject_', name, '.txt',sep=''), sep='/')
  read.table(subjects_path, col.names=c('subject'))
}

run_analysis<-function() {
  if (!file.exists('fucihar.zip')) {
    # added method=curl to support https
    download.file('https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip', destfile = 'fucihar.zip', method="curl")
    unzip(zipfile='fucihar.zip')
  }
  
  # 1. Merge training and test sets to create one data set
  df_all<-rbind(
    cbind(load_subjects('test'), load_activities('test'), load_features('test')),
    cbind(load_subjects('train'), load_activities('train'), load_features('train'))
  )
    
  # 2. Extract only the measurements on the mean and std dev
  # Here we keep only mean and std columns.
  # The 'meanFreq' columns are removed (I think these were not meant to be included,
  # although the assignment did not say this explicitly)
  
  # Old approach: select columns by matching the column names
  # -removed-
  # New approach: load a manually pruned copy of features.txt
  select_cols = read.table('fsel.txt', header=FALSE)$V1
  
  # Now remove the co
  df_sel<-df_all[c(1:2, select_cols+2)]
  
  # 3. Name the activities in the dataset
  activity_labels<-read.table('UCI HAR Dataset/activity_labels.txt')
  levels(df_sel$activity)<-activity_labels$V2
  
  # 4. Appropriately labels the data set with descriptive variable names. 
  
  # Note: Since we used the data from features.txt as colNames in step 1,
  # the columns already have descriptive names.
  
  # 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
  result<-aggregate(df_sel[,3:ncol(df_sel)], FUN=mean, by=list(subject=df_sel$subject,activity=df_sel$activity))
  
  # (6. write the result)
  write.table(result, 'getdata-014-karelvervaeke-result.txt', row.name=FALSE)
  
  # return the result
  result
}

print('run_analysis.R loaded. Call run_analysis() to do the actual work')
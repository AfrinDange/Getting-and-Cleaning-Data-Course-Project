Getting and Cleaning Data Course Project
================

This project is a part of the Data Science Specialization provided by
Johns Hopkins University on Coursera.

The aim of the project is to:

1.  Merge the training and the test sets to create one data set.
2.  Extract only the measurements on the mean and standard deviation for
    each measurement.
3.  Use descriptive activity names to name the activities in the data
    set
4.  Appropriately label the data set with descriptive variable names.
5.  Create a second, independent tidy data set with the average of each
    variable for each activity and each subject.

>The data was originally collected for Human Activity Recognition Using
Smartphones. 30 Volunteers performed six activities while wearing a
smartphone on their waist. 3-axial acceleration and angular velocity was
captured using accelerometer and gyroscope embedded in their smartphone.

The original dataset consists of training and testing data divided in
the ratio of 70:30 and the data is segregated into eight files.

* **X_train.txt, X_test.txt**: 561 features derived from the values captured
by the accelerometer and gyroscope 

* **Y_train.txt, Y_test.txt**: Activity label (1-6) 

* **subject_train.txt, subject_test.txt**: Volunteer (1-30) that performed the activity 

* **features.txt**: Descriptive names of the 561 derived features 

* **activity_labels.txt**:

| Activity | Label               |
| -------- | ------------------- |
| 1        | WALKING             |
| 2        | WALKING\_UPSTAIRS   |
| 3        | WALKING\_DOWNSTAIRS |
| 4        | SITTING             |
| 5        | STANDING            |
| 6        | LAYING              |

## To Create the Tidy dataset

  - Download the dataset: [Data
    Source](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
    [Details about the
    data](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
  - Execute **run\_analysis.R**
  - Refer to the codebook for further details on the tidy dataset.

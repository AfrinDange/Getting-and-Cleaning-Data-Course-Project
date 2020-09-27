#Import required Libraries
library(dplyr)

#Read the training data
x_train <- read.table('./UCI HAR Dataset/train/X_train.txt')
y_train <- read.table('./UCI HAR Dataset/train/Y_train.txt')
subject_train <- read.table('./UCI HAR Dataset/train/subject_train.txt')

#Read the test data
x_test <- read.table('./UCI HAR Dataset/test/X_test.txt')
y_test <- read.table('./UCI HAR Dataset/test/Y_test.txt')
subject_test <- read.table('./UCI HAR Dataset/test/subject_test.txt')

#Read Feature names and activity labels
features <- read.table('./UCI HAR Dataset/features.txt')
activity_labels <- read.table('./UCI HAR Dataset/activity_labels.txt')

#Combine training and testing data
x_total <- rbind(x_train, x_test)
y_total <- rbind(y_train, y_test)
subject_total <- rbind(subject_train, subject_test)

#Extract indices of mean and std features
mean_std_vars <- grep('mean\\(\\)|std\\(\\)', features[,2])
#Extract observations for the mean and std features
x_total_meanstd <- x_total[,mean_std_vars]
#Extract mean and std feature names
featurenames <- features[mean_std_vars,2]
#Provide column names to the mean and std features
names(x_total_meanstd) <- featurenames

#Add descriptive names to activity
names(y_total) <- c('activity')
y_total$activitylabel <- factor(y_total$activity, labels = as.character(activity_labels[,2]))
y_total <- as.data.frame(y_total$activitylabel)
names(y_total) <- c('activitylabel')
#Provide column name to subject
names(subject_total) <- c('subject')

#Combine features, activity and subject columns
xy_subject <- cbind(subject_total, y_total, x_total_meanstd)

#Generate a Tidy Dataset that takes mean of all mean and std features for each subject and each activity
tidy_data <- xy_subject %>% group_by(subject, activitylabel) %>% summarise(across(.fns = mean))
#Save the tidy data in a .csv file
write.table(tidy_data, file = 'tidydataset.txt', sep = ",", row.names = FALSE)
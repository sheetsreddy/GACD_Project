Variables names used in the project_gacd.R file

x_tr, y_tr, sub_tr variables store train data from X_train.txt, y_train.txt and subject_train.txt respectively
x_test, y_test and sub_tr  variables store test data from X_test.txt, y_test.txt and subject_test.txt respectively
x_merge, y_merge and sub_merge variables store merged data from test and train data sets
features variable stores variable names from features.txt file
activity variable stores activity names from activity_labels.txt file
meanstd variable stores names of variables with mean and standard deviation which are extracted from features variable
merged variable stores data from x_merge, y_merge and sub_merge
avg_data variable stores data from performing ddply function to group by id, activity and calculating mean of each variable
average_data.txt stores the final average data by each variable by each activity and each subject


Variables in the average_data.txt file

id - subject ids from 1 to 30 indicating results of experiments that were performed on 30 people

activity - 6 activities - laying, sitting, standing, walking, walking_upstairs, walking_downstairs

Mean and standard deviations measurements

tBodyAcc-mean()-X
tBodyAcc-mean()-Y          
tBodyAcc-mean()-Z
tBodyAcc-std()-X
tBodyAcc-std()-Y
tBodyAcc-std()-Z
tGravityAcc-mean()-X
tGravityAcc-mean()-Y
tGravityAcc-mean()-Z
tGravityAcc-std()-X
tGravityAcc-std()-Y
tGravityAcc-std()-Z
tBodyAccJerk-mean()-X
tBodyAccJerk-mean()-Y      
tBodyAccJerk-mean()-Z
tBodyAccJerk-std()-X
tBodyAccJerk-std()-Y
tBodyAccJerk-std()-Z       
tBodyGyro-mean()-X
tBodyGyro-mean()-Y
tBodyGyro-mean()-Z
tBodyGyro-std()-X          
tBodyGyro-std()-Y
tBodyGyro-std()-Z
tBodyGyroJerk-mean()-X
tBodyGyroJerk-mean()-Y     
tBodyGyroJerk-mean()-Z
tBodyGyroJerk-std()-X
tBodyGyroJerk-std()-Y
tBodyGyroJerk-std()-Z
tBodyAccMag-mean()
tBodyAccMag-std()
tGravityAccMag-mean()
tGravityAccMag-std()
tBodyAccJerkMag-mean()
tBodyAccJerkMag-std()      
tBodyGyroMag-mean()
tBodyGyroMag-std()
tBodyGyroJerkMag-mean()
tBodyGyroJerkMag-std()
fBodyAcc-mean()-X
fBodyAcc-mean()-Y
fBodyAcc-mean()-Z
fBodyAcc-std()-X
fBodyAcc-std()-Y
fBodyAcc-std()-Z
fBodyAccJerk-mean()-X
fBodyAccJerk-mean()-Y
fBodyAccJerk-mean()-Z
fBodyAccJerk-std()-X
fBodyAccJerk-std()-Y
fBodyAccJerk-std()-Z
fBodyGyro-mean()-X
fBodyGyro-mean()-Y
fBodyGyro-mean()-Z
fBodyGyro-std()-X
fBodyGyro-std()-Y
fBodyGyro-std()-Z
fBodyAccMag-mean()
fBodyAccMag-std()
fBodyBodyAccJerkMag-mean()
fBodyBodyAccJerkMag-std()
fBodyBodyGyroMag-mean()
fBodyBodyGyroMag-std()
fBodyBodyGyroJerkMag-mean()
fBodyBodyGyroJerkMag-std()

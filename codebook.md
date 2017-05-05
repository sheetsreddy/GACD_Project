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

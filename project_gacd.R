
# set URL to download the zip file
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

# download zip file to data.zip
download.file(url,"data.zip",mode='wb')

# unzip zip file
unzip("data.zip")

# set working directory to location of data set
setwd("UCI HAR Dataset")

#loading required libraries
library(plyr)

# read test and training data from tables
x_tr <- read.table("train/X_train.txt")
x_test <- read.table("test/X_test.txt")

# read test and training activity data from tables
y_tr <- read.table("train/y_train.txt")
y_test <- read.table("test/y_test.txt")

#read test and training subject data from tables
sub_tr <- read.table("train/subject_train.txt")
sub_test <- read.table("test/subject_test.txt")

## STEP 1:: MERGING TRAINING and TEST SETS TO CREATE ONE DATA SET
# merge test and training data 
x_merge <- rbind(x_test,x_tr)
y_merge <- rbind(y_test,y_tr)
sub_merge <- rbind(sub_test,sub_tr)

# extract features names from features.txt
features <- read.table("features.txt")

# extract activity names from activity_labels.txt
activity <- read.table("activity_labels.txt")

#STEP 2: EXTRACT ONLY MEAN AND STD DEVIATION FROM EACH MEASUREMENT
# extract only columns with mean and std and exclude column names like meanFreq
meanstd <- grep("mean[^F]()|std()",features[,2])

#STEP 3: USE DESCRIPTIVE ACTIVITY NAMES TO NAME ACTIVITIES IN DATA SET
#replace activity numbers in y_merge table with activity names
y_merge$V1 <- activity[y_merge[,1],2]

#STEP 4: LABEL DATA SET WITH DESCRIPTIVE VARIABLE NAMES
#replace colnames in x_merge table with feature names
colnames(x_merge) <- features$V2

# extract mean and std columns from x_merge table
x_merge <- x_merge[,meanstd]

# change column names of y and sub tables to "activity" and "id" respectively
names(y_merge) <- "activity"
names(sub_merge) <- "id"

# merged data from x_merge, y_merge and sub_merge tables
merged <- cbind(x_merge,y_merge,sub_merge)

#STEP5: TIDY DATA SET WITH AVERAGE OF EACH VARIABLE FOR EACH ACTIVITY FOR EACH SUBJECT
avg_data <- ddply(merged,.(id,activity),function(x) colMeans(x[,1:66]))

write.table(avg_data,"average_data.txt")

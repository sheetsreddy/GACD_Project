# GACD_Project
Getting and Cleaning Data Project

Introduction
The file project_gacd.R cleans up data collected from the accelerometers from the Samsung Galaxy S smartphone using R functions as follows -
  1) Read test and train data and store in variables x_tr, x_test, y_tr, y_test, sub_tr, sub_test using read.table function
  2) Merge test and train into x_merge, y_merge, sub_merge using rbind function
  3) Rename activity numbers in y_merge table with activity names from activity_labels.txt file
  4) Rename column names in x_merge table with col names from features.txt file using colnames function
  5) Name column name in y_merge to activity using names function
  6) Name column name in sub_merge to id using names function
  7) Extract variables with only mean and standard deviation in variable name using grep function and store result in variable meanstd
  8) Extract meanstd columns from x_merge table
  9) Column bind tables x_merge, y_merge and sub_merge using cbind function into merged variable
  10) Use ddply function on "merged" data and group by "id" and "activity" and perform a column mean on each of variable using colMeans function
  11) Write average data to averages.txt file
  
  Further details on the variables names are given in codebook.md file

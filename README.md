# GettingAndCleaningData_CourseProject
This repository contains the script and documentation for the course project for the Getting and Cleaning Data course.

##Step1:  Obtaining the data 
The raw data files were downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip to my working directory and unzipped within my working directory using the read.table() and the unzip() functions in R.  After files were downloaded and unzipped the date the data was obtained by sotring the date to a variable called date_Downloaded.

##Step2: Read in the needed files for the project
I read into R 8 tables in order to build by clean and tidy dataset.  I read in the subject, x, and y files for train and test as well as the "activity_labels.txt" and features.txt to assign descriptive values to the y file activities and obtain column names for the contents of the x_train.txt and x_test.txt files.  The newly read tables are called x_test, x_train, y_test, y_train, sub_test, sub_train, activity, and feat.

##Step3: Combine the x_test and x_train files into one data table
Once the x training and x test are combined to a table called x_test_train using the rbind() function, we test the contents of the new file using the head() and names() functions.  Once the contents of the table are validated, we then take the contents of the features.txt file and temporarily assign them as column names to the combined dataset called x_test_train.  We will use the values of these column names to filter the data for only mean and std columns later.

##Step4: We add rows containg the activity value and subject to the x_test_train data
We assign column names to the y_test, y_train, sub_test, sub_train then using the cbind() and rbind() functions add these new columns to the x_test_train data set to create the table called sub_act_x.

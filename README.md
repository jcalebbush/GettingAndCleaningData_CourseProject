# GettingAndCleaningData_CourseProject
This repository contains the script and documentation for the course project for the Getting and Cleaning Data course.

##Step1:  Obtaining the data 
The raw data files were downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip to my working directory and unzipped within my working directory using the read.table() and the unzip() functions in R.  After files were downloaded and unzipped the date the data was obtained by sotring the date to a variable called date_Downloaded.

##Step2: Read in the needed files for the project
I read into R 8 tables in order to build by clean and tidy dataset.  I read in the subject, x, and y files for train and test as well as the "activity_labels.txt" and features.txt to assign descriptive values to the y file activities and obtain column names for the contents of the x_train.txt and x_test.txt files

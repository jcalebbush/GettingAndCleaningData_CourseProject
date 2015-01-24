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

##Step5: We then filter out only the columns containgin the subject, activity, and column names that include the substring "mean()" or "std()".  
I realize there are other columns that contain the word "mean", however, I took liberty in excluding those columns as they did not follow with the "()".  They could have just as easily been included but were not due to the diffent naming convention.  To filter on the relevant columns, I used the grepl() function within the column index of the sub_act_x table.

##Step6:We assign the activity labels to the sub_act_x table
Once we assign column names to the activity file, we use the merge function to joing the activity label to the correct corresponding activity_num that was provided in the y files.  The data table that include the activity labels was called merged_data.

##Step7: We clean up the the column names to get replace dashes "-" with underscores "_" and remove parentheses "()".
Using the gsub() function I replaced dashes with underscores and removed all parentheses in the column names in the table 

##Step8:  We take this tidy dataset called merged data and summarize it by activity and subject to calculate the average for each mean and std variable.
Using the aggregate function, we summarize the data by activity and subject to calculate the average of each mean and std variable in the data table so that we are left with a table that shows the average value for each activity, subject combination in the table.  We call this table sub_act_mean.  After the sumarizaton completes, we rename the columns for the average value so that the original column names are prefaced with the "AVG" so that the user know these new values are averages rolled up by activity and subject. Lastly we then write this new data table sub_act_mean to my working directory.

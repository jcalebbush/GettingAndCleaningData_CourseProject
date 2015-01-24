# GettingAndCleaningData_CourseProject
This repository contains the script and documentation for the course project for the Getting and Cleaning Data course.

##Step1:  Obtain the data 
The raw data files were downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip to the working directory and unzipped within the working directory using the read.table() and the unzip() functions in R.  After files were downloaded and unzipped the date the data was obtained by storing the date to a variable called date_Downloaded.

##Step2: Read in the needed files for the project
Eight tables were read into in order to build by clean and tidy dataset. The subject, x, and y files for train and test were read into R as well as the "activity_labels.txt" and features.txt  to assign descriptive values to the y file activities and obtain column names for the contents of the x_train.txt and x_test.txt files.  The newly read tables are called x_test, x_train, y_test, y_train, sub_test, sub_train, activity, and feat.

##Step3: Combine the x_test and x_train files into one data table
Once the x training and x test are combined to a table called x_test_train using the rbind() function, the contents of the new file were tested using the head() and names() functions.  Once the contents of the table are validated, the contents of the features.txt file are obtained and temporarily assigned as column names to the combined dataset called x_test_train.  The values of these column names were used later to filter the data for only mean and std columns.

##Step4: Add columns containing the activity value and subject to the x_test_train data
Column names were assigned to the y_test, y_train, sub_test, sub_train.  The cbind() and rbind() functions were used to add these new columns to the x_test_train data set to create the table called sub_act_x.

##Step5: Filter out only the columns containing the subject, activity, and column names that include the substring "mean()" or "std()".  
There are other columns that contain the word "mean", however, those column names did not follow with the "()".  They could have just as easily been included but were not due to the diffent naming convention.  To filter on the relevant columns, the grepl() function was used within the column index of the sub_act_x table.

##Step6: Assign the activity labels to the sub_act_x table
Once column names were assigned to the activity file, the merge function was used to join the activity label to the correct corresponding activity_num that was provided in the y files.  The data table that include the activity labels was called merged_data.

##Step7: Clean up the the column names so that dashes "-" were replaced with underscores "_" and parentheses "()" are removed
Using the gsub() function dashes were replaced with underscores and all parentheses were removed in the column names in the table.

##Step8:  Take the dataset called merged data and summarize it by activity and subject to calculate the average for each of the mean and std variables.
Using the aggregate function, the data was rolled up by activity and subject to calculate the average of each mean and std variable in the data table so that a table that shows the average value for each activity, subject combination remains. This table is called sub_act_mean.  After the sumarizaton completes, the columns were renamed for the average value so that the original column names are prefaced with the "AVG".  This was done  so that the user will know these new values are averages rolled up by activity and subject. Lastly, this new data table was written to the working directory and called sub_act_mean

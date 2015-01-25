#See Variable Descriptions below of the table where Mean of mean and Mean of std are created.
#Experiment Background:
Human Activity Recognition Using Smartphones Dataset
Version 1.0
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing 
a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear 
acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually.  

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows 
of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was 
separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency 
components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables 
from the time and frequency domain.  

For more information regarding details of the experiment and the raw data from which the dataset described below was created,
visit https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip for the raw data.  To understand how
the data table mentioned below was created, please visit read me file at the following link:
https://github.com/jcalebbush/GettingAndCleaningData_CourseProject



Variable Descriptions for the sub_act_mean table : 
=================
1. The Subject variable identifies which experimenter participated in the experiment by a number 1 through 30. 

2. The Activity variable identifies which activity the experimenter was performing (i.e. WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, 
   STANDING, LAYING).
3. Below describes the creation of the variables: AVG_tBodyAcc_mean_X, AVG_tBodyAcc_mean_Y, AVG_tBodyAcc_mean_Z, AVG_tGravityAcc_mean_X, 
   AVG_tGravityAcc_mean_Y, AVG_tGravityAcc_mean_Z, AVG_tBodyAcc_std_X, AVG_tBodyAcc_std_Y, AVG_tBodyAcc_std_Z, AVG_tGravityAcc_std_X, 
   AVG_tGravityAcc_std_Y, AVG_tGravityAcc_std_Z.

   The measurements selected from the experiment come from the accelerometer and gyroscope 3-axial raw signals tAcc_XYZ and tGyro_XYZ. 
   These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. 

   Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
   Similarly, the acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter 
   with a corner frequency of 0.3 Hz. The following variables contain the measurements described above:
   tBodyAcc_X, tBodyAcc_Y, tBodyAcc_Z, tGravityAcc_X, tGravityAcc_Y, tGravityAcc_Z.

   The mean and standard deviation of the measurements above were then estimated among the sample of observations to then produce the following variables.
   tBodyAcc_mean_X, tBodyAcc_mean_Y, tBodyAcc_mean_Z, tGravityAcc_mean_X, tGravityAcc_mean_Y, tGravityAcc_mean_Z,
   tBodyAcc_std_X, tBodyAcc_std_Y, tBodyAcc_std_Z, tGravityAcc_std_X, tGravityAcc_std_Y, tGravityAcc_std_Z.

   The Average rolled up by subject and activity was then calculated for each of the variables above and are included in the data table.
   AVG_tBodyAcc_mean_X, AVG_tBodyAcc_mean_Y, AVG_tBodyAcc_mean_Z, AVG_tGravityAcc_mean_X, AVG_tGravityAcc_mean_Y, AVG_tGravityAcc_mean_Z,
   AVG_tBodyAcc_std_X, AVG_tBodyAcc_std_Y, AVG_tBodyAcc_std_Z, AVG_tGravityAcc_std_X, AVG_tGravityAcc_std_Y, AVG_tGravityAcc_std_Z.
   
4. Below describes the creation of the variables: 
   AVG_tBodyAccMag_mean, tGravityAccMag_mean, AVG_tBodyAccJerkMag_mean, AVG_tBodyGyroMag_mean, AVG_tBodyGyroJerkMag_mean, AVG_fBodyAcc_mean_X, 
   AVG_fBodyAcc_mean_Y, AVG_fBodyAcc_mean_Z, AVG_fBodyAccJerk_mean_X, AVG_fBodyAccJerk_mean_Y, AVG_fBodyAccJerk_mean_Z, AVG_fBodyGyro_mean_X, 
   AVG_fBodyGyro_mean_Y, AVG_fBodyGyro_mean_Z, AVG_fBodyAccJerkMag_mean, AVG_fBodyGyroMag_mean, AVG_fBodyGyroJerkMag_mean, AVG_tBodyAccMag_std, 
   tGravityAccMag_std, AVG_tBodyAccJerkMag_std, AVG_tBodyGyroMag_std, AVG_tBodyGyroJerkMag_std, AVG_fBodyAcc_std_X, AVG_fBodyAcc_std_Y, 
   AVG_fBodyAcc_std_Z, AVG_fBodyAccJerk_std_X, AVG_fBodyAccJerk_std_Y, AVG_fBodyAccJerk_std_Z, AVG_fBodyGyro_std_X, AVG_fBodyGyro_std_Y, 
   AVG_fBodyGyro_std_Z, AVG_fBodyAccJerkMag_std, AVG_fBodyGyroMag_std, AVG_fBodyGyroJerkMag_std.
   
Subsequently, the body linear acceleration and angular velocity were derived in time to 
   obtain Jerk signals (tBodyAccJerk_XYZ and tBodyGyroJerk_XYZ). Also the magnitude of these 
   three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, 
   tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

   Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing the following variables:
   fBodyAcc_X, fBodyAcc_Y, fBodyAcc_Z, fBodyAccJerk_X, fBodyAccJerk_Y, fBodyAccJerk_Z, fBodyGyro_X, fBodyGyro_Y, fBodyGyro_Z.
   fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
   
   The mean and standard deviation of the measurements above were then estimated among the sample of observations to then produce the following variables.
  tBodyAccJerk_mean_x, tBodyAccJerk_mean_Y, tBodyAccJerk_mean_Z, tBodyGyroJerk_mean_X, tBodyGyroJerk_mean_Y, tBodyGyroJerk_mean_Z,
   tBodyAccJerk_std_x, tBodyAccJerk_std_Y, tBodyAccJerk_std_Z, tBodyGyroJerk_std_X, tBodyGyroJerk_std_Y, tBodyGyroJerk_std_Z,
   tBodyAccMag_mean, tGravityAccMag_mean, tBodyAccJerkMag_mean, tBodyGyroMag_mean, tBodyGyroJerkMag_mean, fBodyAcc_mean_X, fBodyAcc_mean_Y, 
   fBodyAcc_mean_Z, fBodyAccJerk_mean_X, fBodyAccJerk_mean_Y, fBodyAccJerk_mean_Z, fBodyGyro_mean_X, fBodyGyro_mean_Y, fBodyGyro_mean_Z, 
   fBodyAccJerkMag_mean, fBodyGyroMag_mean, fBodyGyroJerkMag_mean, tBodyAccMag_std, tGravityAccMag_std, tBodyAccJerkMag_std, tBodyGyroMag_std, 
   tBodyGyroJerkMag_std, fBodyAcc_std_X, fBodyAcc_std_Y, fBodyAcc_std_Z, fBodyAccJerk_std_X, fBodyAccJerk_std_Y, fBodyAccJerk_std_Z, 
   fBodyGyro_std_X, fBodyGyro_std_Y, fBodyGyro_std_Z, fBodyAccJerkMag_std, fBodyGyroMag_std, fBodyGyroJerkMag_std.

   The Average rolled up by subject and activity was then calculated for each of the variables above and are included in the data table.
   AVG_tBodyAccMag_mean, tGravityAccMag_mean, AVG_tBodyAccJerkMag_mean, AVG_tBodyGyroMag_mean, AVG_tBodyGyroJerkMag_mean, AVG_fBodyAcc_mean_X, 
   AVG_fBodyAcc_mean_Y, AVG_fBodyAcc_mean_Z, AVG_fBodyAccJerk_mean_X, AVG_fBodyAccJerk_mean_Y, AVG_fBodyAccJerk_mean_Z, AVG_fBodyGyro_mean_X, 
   AVG_fBodyGyro_mean_Y, AVG_fBodyGyro_mean_Z, AVG_fBodyAccJerkMag_mean, AVG_fBodyGyroMag_mean, AVG_fBodyGyroJerkMag_mean, AVG_tBodyAccMag_std, 
   tGravityAccMag_std, AVG_tBodyAccJerkMag_std, AVG_tBodyGyroMag_std, AVG_tBodyGyroJerkMag_std, AVG_fBodyAcc_std_X, AVG_fBodyAcc_std_Y, 
   AVG_fBodyAcc_std_Z, AVG_fBodyAccJerk_std_X, AVG_fBodyAccJerk_std_Y, AVG_fBodyAccJerk_std_Z, AVG_fBodyGyro_std_X, AVG_fBodyGyro_std_Y, 
   AVG_fBodyGyro_std_Z, AVG_fBodyAccJerkMag_std, AVG_fBodyGyroMag_std, AVG_fBodyGyroJerkMag_std.

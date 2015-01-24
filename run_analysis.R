#HERE WE DOWNLOAD THE RELAVANT ZIP FILE FROM THE WEBSITE, STORE THEM IN THE WORKING DIRECTORY
#AND EXTRACT THE CONTENTS IN THE ZIP FILE
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile = "./data.zip")
unzip("data.zip", files = NULL, list = FALSE, overwrite = TRUE,
      junkpaths = FALSE, exdir = ".", unzip = "internal",
      setTimes = FALSE)

#HERE WE RECORD THE DATE THAT THE DATA WAS DOWNLOADED
dateDownloaded <- date()
dateDownloaded

#HERE WE BEGIN TO READ THE RELEVANT FILES FOR THE CLEAN UP PROCESS
#And THIS IS where we read in THE TEST DATA
sub_test <-read.table("./UCI HAR Dataset/test/subject_test.txt")
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")

#HERE IS WHERE WE READ IN THE TRAIN DATA
sub_train <-read.table("./UCI HAR Dataset/train/subject_train.txt")
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")


#HERE IS THE ACTIVITY FILE THAT CONTAINS THE TYPES OF MOVEMENTS THE SUBJECT PERFORMED
activity <- read.table("./UCI HAR Dataset/activity_labels.txt")

#HERE IS THE FILE THAT CONTAINS THE VARIABLE NAMES FOR THE X_TRAIN AND x_TEST DATA
feat <- read.table("./UCI HAR Dataset/features.txt")

#HERE WE MERGE THE X TEST AND TRAIN DATA (PART 1 OF THE PROGRAMMING ASSIGNMENT)
x_test_train <- rbind(x_test, x_train)
head(x_test_train,2)
ncol(x_test_train)


#HERE WE ASSIGN COLUMN NAMES FROM THE FEATURE.TXT FILE TO THE X TEST AND TRAIN DATA
names(x_test_train) <- feat[,2]
head(x_test_train,2)
names(x_test_train)

#HERE WE ASSIGN COLUMN NAMES TO THE ACTIVITY VALUE FILES 
names(y_test) <- 'activity_num'
names(y_train) <- 'activity_num'
names(sub_test) <- 'subject'
names(sub_train) <- 'subject'

#HERE WE COMBINE THE SUBJECT DATA AND THE ACTIVITY VALUES FROM THE Y DATA SETS TO THE X TEST AND TRAIN DATA TO CONSOLIDATE THE FILES
sub_act_x <- cbind(rbind(sub_test, sub_train), rbind(y_test, y_train), x_test_train)
head(sub_act_x, 2)
ncol(sub_act_x)
names(sub_act_x)

#HERE WE OBTAIN ONLY THE MEAN AND STD VARIABLES FROM THE X TEST AND TRAIN DATA FRAMES (PART 2 OF THE PROGRAMMING ASSIGNMENT)
sub_act_x <- sub_act_x[, grepl("mean\\(\\)", names(sub_act_x)) | grepl("std\\(\\)", names(sub_act_x))] #| grepl("subject", names(sub_act_x)) | grepl("activity_num",names(sub_act_x))]
head(sub_act_x,2)
ncol(sub_act_x)
names(sub_act_x)

#HERE WE ASSIGN THE COLUMN NAMES TO THE ACTIVITY NAME FILE (PART 3 OF PROGRAMMING ASSIGNMENT)
names(activity) <- c('activity_num', 'activity_name')
head(activity,2)
merged_data <- merge(activity, sub_act_x, by.x ="activity_num", by.y = "activity_num", all=TRUE)
head(merged_data,2)

#HERE WE CLEAN UP THE COLUMN NAMES REMOVING PARENTHESES AND REPLACING DASHES WITH UNDERSCORES (PART 4 OF PROGRAMMING ASSIGNMENT)
#We now have a clean and tidy data frame after many transformations.
column_names <- names(merged_data)
pattern <- "-"
column_names <-gsub(pattern,"_", column_names)
pattern2 <- "\\()"
column_names <-gsub(pattern2, "", column_names)
column_names

names(merged_data) <- column_names
head(merged_data,2)

#Here we create a new data set where we calculate the mean of each measurement by subject and activity
#THIS PART 5 OF THE PROGRAMMING ASSIGNMENT
sub_act_mean <-aggregate(x=merged_data[,4:69], by=list(Subject = merged_data$subject, Activity = merged_data$activity_name), FUN=mean)
nrow(sub_act_mean)
head(sub_act_mean, 2)
column_names <- names(sub_act_mean)
column_names <- gsub("tBody", "AVG_tBody", column_names)
column_names <- gsub("fBody", "AVG_fBody", column_names)
column_names <- gsub("tGravity", "AVG_tGravity", column_names)
column_names

write.table(sub_act_mean, file = "mean_by_subject_activity.txt", sep = ",", row.name = FALSE)

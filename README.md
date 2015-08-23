# Getting-and-Cleaning-Data-Assignment

# Steps to run the Analysis on the Assignment Data

1. Download the data source and the required files from the github link provided below and put into a local folder.
	https://github.com/asrulnb/Getting-and-Cleaning-Data-Assignment
	
2. Open the run_analysis.R file in your Rstudio. 
	- The Rstudio used to create this script is Version 0.99.465
	- The Rstudio runs on a 64bit Windows 8.1 Machine running R version 3.2.1 (2015-06-18)
	
3. Set your working directory same folder as the run_analysis.R file.
	
4. The Raw data "UCI HAR Dataset" should be located at the same working directory
	
5. Running source(`run_analysis.R`) will generate a new file `tidydata.txt` in the working directory.

## Analysis Script Explanation
1. library “dplyr”, and “data.table” is loaded.

2. Part 1 : 
	Merges the training and the test sets to create one data set
	- Read "subject_train.txt", "y_train.txt" and "x_train.txt" from “train” folder
	- Read "subject_test.txt", "y_test.txt" and "x_test.txt" from “test” folder

	- Merge dataset  "x_train.txt" and "x_test.txt" data into “ds”
	- Read “features.txt”
	- Name features as columns names for “ds”

	- Merge "y_train.txt" and "y_test.txt" data into one variable “activityLabel"
	- Merge "subject_train" and "subject_test" into one data variable "subData”
	
	- Merge "subData”,”activityLabel" and "ds” into one data table ”dt”

3. Part 2 : 
	Extracts only the measurements on the mean and standard deviation for each measurement
	- With “select” function available in “dplyr” able to select names contains “mean” and “std” word from “subject” and “activityLabel”

4. Part 3 : 
	Uses descriptive activity names to name the activities in the data set

	- Read descriptive names from “activity_labels.txt” file
	- “mutate” function to replace the numbers with descriptive name
	
5. Part 4 : 
	Appropriately labels the data set with descriptive variable names
	- “sub” function to replace label to more meaningful words

6. Part 5 : creates a second, independent tidy data set with the average of each variable for each activity and each subject
 
	
	- "aggregate" function to calculate the mean for each of the specified columns
	- Export “tinydata.txt” with “write.data” function.
	

## Getting and Cleaning Data Course Project

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  

One of the most exciting areas in all of data science right now is wearable computing - see for example [this article](http://www.insideactivitytracking.com/data-science-activity-tracking-and-the-battle-for-the-worlds-top-sports-brand/) . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

 You should create one R script called run_analysis.R that does the following. 

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
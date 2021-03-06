

#Getting and Cleaning Data Assignment
#Code Book

- There are two sets of data in 2 folders within UCI HAR Dataset, “test" and “train”.
- All data is merged and consolidated into a single dataset.
- Initial merged data has 10299 rows and 563 columns
- Data are filters by Data with "Mean" (mean) and "Standard Deviation" (std).
- Final data consists of 88 columns with 10299 rows of record

[ Original Column Names ]
 [1] "Subject"                             
 [2] "Activity"                            
 [3] "tBodyAcc-mean()-X"                   
 [4] "tBodyAcc-mean()-Y"                   
 [5] "tBodyAcc-mean()-Z"                   
 [6] "tBodyAcc-std()-X"                    
 [7] "tBodyAcc-std()-Y"                    
 [8] "tBodyAcc-std()-Z"                    
 [9] "tGravityAcc-mean()-X"                
[10] "tGravityAcc-mean()-Y"                
[11] "tGravityAcc-mean()-Z"                
[12] "tGravityAcc-std()-X"                 
[13] "tGravityAcc-std()-Y"                 
[14] "tGravityAcc-std()-Z"                 
[15] "tBodyAccJerk-mean()-X"               
[16] "tBodyAccJerk-mean()-Y"               
[17] "tBodyAccJerk-mean()-Z"               
[18] "tBodyAccJerk-std()-X"                
[19] "tBodyAccJerk-std()-Y"                
[20] "tBodyAccJerk-std()-Z"                
[21] "tBodyGyro-mean()-X"                  
[22] "tBodyGyro-mean()-Y"                  
[23] "tBodyGyro-mean()-Z"                  
[24] "tBodyGyro-std()-X"                   
[25] "tBodyGyro-std()-Y"                   
[26] "tBodyGyro-std()-Z"                   
[27] "tBodyGyroJerk-mean()-X"              
[28] "tBodyGyroJerk-mean()-Y"              
[29] "tBodyGyroJerk-mean()-Z"              
[30] "tBodyGyroJerk-std()-X"               
[31] "tBodyGyroJerk-std()-Y"               
[32] "tBodyGyroJerk-std()-Z"               
[33] "tBodyAccMag-mean()"                  
[34] "tBodyAccMag-std()"                   
[35] "tGravityAccMag-mean()"               
[36] "tGravityAccMag-std()"                
[37] "tBodyAccJerkMag-mean()"              
[38] "tBodyAccJerkMag-std()"               
[39] "tBodyGyroMag-mean()"                 
[40] "tBodyGyroMag-std()"                  
[41] "tBodyGyroJerkMag-mean()"             
[42] "tBodyGyroJerkMag-std()"              
[43] "fBodyAcc-mean()-X"                   
[44] "fBodyAcc-mean()-Y"                   
[45] "fBodyAcc-mean()-Z"                   
[46] "fBodyAcc-std()-X"                    
[47] "fBodyAcc-std()-Y"                    
[48] "fBodyAcc-std()-Z"                    
[49] "fBodyAcc-meanFreq()-X"               
[50] "fBodyAcc-meanFreq()-Y"               
[51] "fBodyAcc-meanFreq()-Z"               
[52] "fBodyAccJerk-mean()-X"               
[53] "fBodyAccJerk-mean()-Y"               
[54] "fBodyAccJerk-mean()-Z"               
[55] "fBodyAccJerk-std()-X"                
[56] "fBodyAccJerk-std()-Y"                
[57] "fBodyAccJerk-std()-Z"                
[58] "fBodyAccJerk-meanFreq()-X"           
[59] "fBodyAccJerk-meanFreq()-Y"           
[60] "fBodyAccJerk-meanFreq()-Z"           
[61] "fBodyGyro-mean()-X"                  
[62] "fBodyGyro-mean()-Y"                  
[63] "fBodyGyro-mean()-Z"                  
[64] "fBodyGyro-std()-X"                   
[65] "fBodyGyro-std()-Y"                   
[66] "fBodyGyro-std()-Z"                   
[67] "fBodyGyro-meanFreq()-X"              
[68] "fBodyGyro-meanFreq()-Y"              
[69] "fBodyGyro-meanFreq()-Z"              
[70] "fBodyAccMag-mean()"                  
[71] "fBodyAccMag-std()"                   
[72] "fBodyAccMag-meanFreq()"              
[73] "fBodyBodyAccJerkMag-mean()"          
[74] "fBodyBodyAccJerkMag-std()"           
[75] "fBodyBodyAccJerkMag-meanFreq()"      
[76] "fBodyBodyGyroMag-mean()"             
[77] "fBodyBodyGyroMag-std()"              
[78] "fBodyBodyGyroMag-meanFreq()"         
[79] "fBodyBodyGyroJerkMag-mean()"         
[80] "fBodyBodyGyroJerkMag-std()"          



- The column names has to be modified to be able to run “dplyr” functions.

- Make.names functions is used:
	 make.names(names = t(featureList[2]),unique = TRUE,allow_ = TRUE)

- The requirement of the project has to filter out other than column names that contains “mean” and “std”

- Some of the column names with abbreviations are placed to more meaningful words.
	E.g. 	“tBody” replaced by “timeBody”
		“fBody” replaced by “freqBody”

The final column names as results for tinydata.txt.	
                     
 [3] "timeBodyAccMeanX"                     "timeBodyAccMeanY"                    
 [5] "timeBodyAccMeanZ"                     "timeGravityAccMeanX"                 
 [7] "timeGravityAccMeanY"                  "timeGravityAccMeanZ"                 
 [9] "timeBodyAccJerkMeanX"                 "timeBodyAccJerkMeanY"                
[11] "timeBodyAccJerkMeanZ"                 "timeBodyGyroMeanX"                   
[13] "timeBodyGyroMeanY"                    "timeBodyGyroMeanZ"                   
[15] "timeBodyGyroJerkMeanX"                "timeBodyGyroJerkMeanY"               
[17] "timeBodyGyroJerkMeanZ"                "timeBodyAccMagMean"                  
[19] "timeGravityAccMagMean"                "timeBodyAccJerkMagMean"              
[21] "timeBodyGyroMagMean"                  "timeBodyGyroJerkMagMean"             
[23] "freqBodyAccMeanX"                     "freqBodyAccMeanY"                    
[25] "freqBodyAccMeanZ"                     "freqBodyAccMeanFreqX"                
[27] "freqBodyAccMeanFreqY"                 "freqBodyAccMeanFreqZ"                
[29] "freqBodyAccJerkMeanX"                 "freqBodyAccJerkMeanY"                
[31] "freqBodyAccJerkMeanZ"                 "freqBodyAccJerkMeanFreqX"            
[33] "freqBodyAccJerkMeanFreqY"             "freqBodyAccJerkMeanFreqZ"            
[35] "freqBodyGyroMeanX"                    "freqBodyGyroMeanY"                   
[37] "freqBodyGyroMeanZ"                    "freqBodyGyroMeanFreqX"               
[39] "freqBodyGyroMeanFreqY"                "freqBodyGyroMeanFreqZ"               
[41] "freqBodyAccMagMean"                   "freqBodyAccMagMeanFreq"              
[43] "freqBodyBodyAccJerkMagMean"           "freqBodyBodyAccJerkMagMeanFreq"      
[45] "freqBodyBodyGyroMagMean"              "freqBodyBodyGyroMagMeanFreq"         
[47] "freqBodyBodyGyroJerkMagMean"          "freqBodyBodyGyroJerkMagMeanFreq"     
[49] "angletimeBodyAccMeangravity"          "angletimeBodyAccJerkMeangravityMean" 
[51] "angletimeBodyGyroMeangravityMean"     "angletimeBodyGyroJerkMeangravityMean"
[53] "angleXgravityMean"                    "angleYgravityMean"                   
[55] "angleZgravityMean"                    "timeBodyAccStdX"                     
[57] "timeBodyAccStdY"                      "timeBodyAccStdZ"                     
[59] "timeGravityAccStdX"                   "timeGravityAccStdY"                  
[61] "timeGravityAccStdZ"                   "timeBodyAccJerkStdX"                 
[63] "timeBodyAccJerkStdY"                  "timeBodyAccJerkStdZ"                 
[65] "timeBodyGyroStdX"                     "timeBodyGyroStdY"                    
[67] "timeBodyGyroStdZ"                     "timeBodyGyroJerkStdX"                
[69] "timeBodyGyroJerkStdY"                 "timeBodyGyroJerkStdZ"                
[71] "timeBodyAccMagStd"                    "timeGravityAccMagStd"                
[73] "timeBodyAccJerkMagStd"                "timeBodyGyroMagStd"                  
[75] "timeBodyGyroJerkMagStd"               "freqBodyAccStdX"                     
[77] "freqBodyAccStdY"                      "freqBodyAccStdZ"                     
[79] "freqBodyAccJerkStdX"                  "freqBodyAccJerkStdY"                 
[81] "freqBodyAccJerkStdZ"                  "freqBodyGyroStdX"                    
[83] "freqBodyGyroStdY"                     "freqBodyGyroStdZ"                    
[85] "freqBodyAccMagStd"                    "freqBodyBodyAccJerkMagStd"           
[87] "freqBodyBodyGyroMagStd"               "freqBodyBodyGyroJerkMagStd" 
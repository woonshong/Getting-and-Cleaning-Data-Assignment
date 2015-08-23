library(data.table)
library(dplyr)

#Read Training sets
trainDat <- read.table("./UCI HAR Dataset/train/X_train.txt")
trainDat <- data.table(trainDat)

testDat <- read.table("./UCI HAR Dataset/test/X_test.txt")
testDat <- data.table(testDat)

#Read Training labels
trainLabels <- fread("./UCI HAR Dataset/train/Y_train.txt")
testLabels <- fread("./UCI HAR Dataset/test/Y_test.txt")


#Read Subjects
trainSub <- fread("./UCI HAR Dataset/train/subject_train.txt")
testSub <- fread("./UCI HAR Dataset/test/subject_test.txt")

#Merge
#Data set
ds <- rbind(trainDat,testDat)

#read the features
featuresList <- read.table("./UCI HAR Dataset/features.txt")

# check the names are valid for use
vnames <- make.names(names = t(featuresList[2]),unique = TRUE,allow_ = TRUE)

colnames(ds) <- vnames
#names(ds)

#Combine activity labels
activityLab <- rbind(trainLabels,testLabels)
setnames(activityLab, "V1", "activityLabel")

#Combine Subjects
subData <- rbind(trainSub, testSub)
setnames(subData, "V1", "subject")
#names(subData)
#cbind Dataset with activity labels & Subject Data
dt <- cbind(activityLab, subData)
dt <- cbind(dt, ds)

#PART 2

dt <- select(dt,subject,activityLabel,contains("mean"),contains("std"))

#PART 3
activityNames <- read.table("./UCI HAR Dataset/activity_labels.txt", header=F)
#replace the activity label to descriptive names
dt <- mutate(dt,activityLabel = activityNames[activityLabel,2])

#PART 4

names(dt)<-gsub("mean", "Mean", names(dt))
names(dt)<-gsub(".", "", names(dt), fixed = TRUE)
names(dt)<-gsub("std", "Std", names(dt))
names(dt)<-gsub("tBody", "timeBody", names(dt))
names(dt)<-gsub("tGravity", "timeGravity", names(dt))
names(dt)<-gsub("fBody", "freqBody", names(dt))
names(dt)<-gsub("fGravity", "freqGravity", names(dt))

#Part 5
#change subject to factor
dt$subject <- as.factor(dt$subject)

#Calculate mean except for subject and activitylabel
exportData <- aggregate(. ~subject + activityLabel, dt, mean)

#Arrange with order
exportData <- exportData[order(exportData$subject,exportData$activityLabel),]

#export the file
write.table(exportData, file = "tidydata.txt", row.names = FALSE)
head(exportData)

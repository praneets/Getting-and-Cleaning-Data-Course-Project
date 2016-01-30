## - Installing and sourcing necessary package - ##

install.packages("dplyr")
install.packages("data.table")
library(dplyr)
library(data.table)

## - Reading tables from folders - ##

setwd("I:\\Coursera\\Getting and Cleaning Data\\Working\\data\\UCI HAR Dataset\\test")
testdata <- read.table("X_test.txt")
testydata <- read.table("Y_test.txt")
testsubdata <- read.table("subject_test.txt")

setwd("I:\\Coursera\\Getting and Cleaning Data\\Working\\data\\UCI HAR Dataset\\train")
traindata <- read.table("X_train.txt")
trainydata <- read.table("Y_train.txt")
trainsubdata <- read.table("subject_train.txt")

setwd("I:\\Coursera\\Getting and Cleaning Data\\Working\\data\\UCI HAR Dataset")
columns <- read.table("features.txt")
actnames <- read.table("activity_labels.txt")

## --- Merging Data ---###

finaltest <- cbind(testsubdata,testydata,testdata)
finaltrain <- cbind(trainsubdata,trainydata,traindata)
finaldata <- rbind(finaltest,finaltrain)

##-- Inserting column names and cleaning the column names -- ##

collist <- c("Subject_ids","Activity_names",as.character(columns$V2))
colnames(finaldata) <- collist
colnames(finaldata) <- sub("^f","Freq",sub("^t","Time",gsub("_"," ",gsub("-"," ",colnames(finaldata)))))

##-- Extracting columns containing mean and std --##

findata <- cbind(finaldata[,1],finaldata[,2],finaldata[,grep("mean()",names(finaldata))],finaldata[,grep("std()",names(finaldata))])
colnames(findata)[1:2] <- c("SubjectId", "ActivityNames")

## -- Inserting Activity names in place of Activity numbers -- ##
findata[,2] <- actnames[match(findata[,2],actnames[,1]),2]

##-- Summarizing by Subject Ids and Activities --##
fintable <- data.table(findata)
output <- fintable %>% group_by(SubjectId, ActivityNames) %>% summarize_each(funs(mean))
write.table(output, "Output.txt", row.names = FALSE)
## -- Final Output



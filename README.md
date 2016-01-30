# Getting-and-Cleaning-Data-Course-Project
Repo for submission of course project

run_analysis.R is the R code file for Course Project in the Getting and Cleaning Data Course

First it installs and sources the required packages like dplyr and data.table

Then it reads the tables containing the test data and train data. In addition, it also reads the features tables containing column names as well as Activity table containing Activity names

All the files are in different folders so folders are changed appropriately

The datasets are combined using rbind and cbind functions as columns and rows are matching

The column names are cleaned for any special characters

Columns containing mean and std are extracted into a new dataset

Later activity ids are replaced by activity names. The output of this dataset is in findata

FInally, means of different variables are calculated based on grouping by Subject ID an Activity Names

The resultant output is in the output dataset


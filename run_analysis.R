filesPath <- "/home/yshthdn/Downloads/getting and cleaning data/"
setwd(filesPath)
if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/Dataset.zip",method="curl")
###Unzip DataSet to /data directory
unzip(zipfile="./data/Dataset.zip",exdir="./data")

###Load required packages
library(dplyr)
library(data.table)
library(tidyr)
filesPath <- "/home/yshthdn/Downloads/getting and cleaning data/data/UCI HAR Dataset"
  
  # Read subject files
  dataSubjectTrain <- tbl_df(read.table(file.path(filesPath, "train", "subject_train.txt")))
  dataSubjectTest  <- tbl_df(read.table(file.path(filesPath, "test" , "subject_test.txt" )))

# Read activity files
dataActivityTrain <- tbl_df(read.table(file.path(filesPath, "train", "y_train.txt")))
dataActivityTest  <- tbl_df(read.table(file.path(filesPath, "test" , "y_test.txt" )))

#Read data files.
dataTrain <- tbl_df(read.table(file.path(filesPath, "train", "X_train.txt" )))
dataTest  <- tbl_df(read.table(file.path(filesPath, "test" , "X_test.txt" )))

run_analysis <- function() {
  
  library(plyr)
  library(dplyr)
  library(tidyr)
  
  # Get the two datasets
  train <- read.table("train/X_train.txt")
  test <- read.table("test/X_test.txt")
  
  # Get the training data labels
  trainingLabel <- read.table("train/y_train.txt")
  names(trainingLabel) <- c("Key")
  
  # Get the test data labels
  testLabel <- read.table("test/y_test.txt")
  names(testLabel) <- c("Key")

  # Get the activity labels
  actLabel <- read.table("activity_labels.txt")
  names(actLabel) <- c("Key","activity")

  # Enrich the data labels to respective data labels
  trainingLabel <- join(trainingLabel,actLabel)
  testLabel <- join(testLabel,actLabel)
  
  # Get the subject data
  testSubject <- read.table("test/subject_test.txt")
  trainSubject <- read.table("train/subject_train.txt")
  names(testSubject) <- c("subject")
  names(trainSubject) <- c("subject")
  
  # Get the column header data
  headers <- read.table("features.txt")
  
  # Add column headers to the two datasets
  names(test)  <- make.unique(as.character(headers[,"V2"]),sep=".")
  names(train) <- make.unique(as.character(headers[,"V2"]),sep=".")

  # Step 3: Add activity/subject description to dataset
  test <- cbind(testSubject,testLabel,test)
  train <- cbind(trainSubject,trainingLabel,train)
  
  # Step 1: Merging the two datasets together
  full <- rbind(test,train)
  
  # Step 2: Extract only mean and standard deviation columns
  selMean <- select(full, contains("mean") )
  selStd <- select(full, contains("std"))
  selOther  <- select(full, subject, activity)
  selAll <- cbind(selOther,selMean,selStd)
  
  # Step 4: Make variable names descriptive
  names(selAll) <- sub("^t","time",names(selAll))
  names(selAll) <- sub("^f","fastFourierTransform",names(selAll))
  names(selAll) <- sub("Acc","Acceleration",names(selAll))
  names(selAll) <- sub("Gyro","Gyroscope",names(selAll))
  names(selAll) <- sub("Mag","Magnitude",names(selAll))
  names(selAll) <- sub("-mean\\(\\)","Mean",names(selAll))
  names(selAll) <- sub("-std\\(\\)","StandardDeviation",names(selAll))
  names(selAll) <- sub("-X","OnXAxisOfPhone",names(selAll))
  names(selAll) <- sub("-Y","OnYAxisOfPhone",names(selAll))
  names(selAll) <- sub("-Z","OnZAxisOfPhone",names(selAll))
  names(selAll) <- sub("BodyBody","Body",names(selAll))
  
  # Step 5: Create a new data set with means of all columns 
  finalAll <- ddply(selAll,.(subject,activity),numcolwise(mean))

  # Convert it into tidy vertical format with "subject, activity, feature, mean"
  finalAll <- gather(finalAll,feature,mean,-subject,-activity)
  write.table(finalAll,file="tidyDataSet.txt",row.names=FALSE,quote=FALSE);
  finalAll
}
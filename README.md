# Human Activity Recognition Using Smartphones Dataset
####################


This project contains script run_analysis.R which has the code for the data transformation.

To execute the R script just run it in the directory containing the test/train datasets, it would parse the datasets and generate tidyDataSet.txt which is the final output of cleaning process.

The run_analysis.R does the following things

* Parses the training datasets
  
  * It reads the X_train.txt to get the main training dataset  
  * It reads the Y_train.txt to get the row/activity labels
  * It reads the activity_labels.txt to get the descriptive values
  * It reads the features.txt to get the variable names/column headers
  * It reads the subject_train.txt to get the subject labels

* Parses the test datasets
  
  * It reads the X_test.txt to get the main training dataset  
  * It reads the Y_test.txt to get the row/activity labels
  * It reads the activity_labels.txt to get the descriptive values
  * It reads the features.txt to get the variable names/column headers
  * It reads the subject_test.txt to get the subject labels

* Enriches the data set with subject and activity labels

  * Adds the activity labels and subject labels to test and training datasets
  
* Combines the two data set into a single set

  * Creates a new dataset named full with test and training data combined 

* Extracts the mean and standard deviation data out of the above set
 
  * Uses select(dplyr) function to get all the columns with mean and std in their names
  
* Makes the variable names more descriptive using the following guidelines

  * Use descriptive name where ever possible
  * Use camel case for variable naming (makes it readable)
  * Remove special symbols from the names
  * Remove any duplication from the names
  * Following transformation were applied
    * Replace starting t with time
    * Replace starting f with fastFourierTransform
    * Replace Acc with Acceleration
    * Replace Gyro with Gyroscope
    * Replace Mag with Magnitude
    * Replace -mean() with Mean
    * Replace -std() with StandardDeviation
    * Replace -X with OnXAxisOfPhone
    * Replace -Y with OnYAxisOfPhone
    * Replace -Z with OnZAxisOfPhone
    * Replace BobyBody in few names with Body
  

* Groups the data by subject,activity and column variable and calculates mean 

  * Used ddply(plyr) function to group the data by subject and activity and calculate mean
  * This data set has 180 rows and 88 columns
  
* Tidy's the dataset and represents it in a narrow (vertical) format

  * Used gather(tidyr) function to convert all column with features to single column called feature
  * This data set has 15480 rows and 4 columns as follows
    * subject
    * activity
    * feature
    * mean
  
* Writes the final result to tidyDataSet.txt file

  * Use write.table to dump this table into tidyDataSet.txt
  * Final dataset is also retured as output from the script
  



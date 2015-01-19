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

* Makes the variable names more descriptive
* Extracts the mean and standard deviation data out of the above set
* Groups the data by subject,activity and column variable and calculates mean 
* Tidy's the dataset and represents it in a narrow (vertical) format
* Writes the final result to tidyDataSet.txt file



# Human Activity Recognition Using Smartphones Dataset
####################


This project contains script run_analysis.R which has the code for the data transformation.

To execute the R script just run it in the directory containing the test/train datasets, it would parse the datasets and generate tidyDataSet.txt which is the final output of cleaning process.

The run_analysis.R does the following things
* Parses the training and test datasets
* Combines the two data set into a single set
* Enriches the data set with subject and activity labels
* Makes the variable names more descriptive
* Extracts the mean and standard deviation data out of the above set
* Groups the data by subject,activity and column variable and calculates mean 

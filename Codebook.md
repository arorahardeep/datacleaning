DATA Dictionary - Human Activity Recognition Using Smartphones Dataset 
===============

subject 	2

	Serial number of the subject 
	
	* 1..30		.Unique identifier assigned to each subject

activity	18

	Activity Name (6 values)
	
	* WALKING
	* WALKING_UPSTAIRS
	* WALKING_DOWNSTAIRS
	* SITTING
	* STANDING
	* LAYING

feature		72
	Descriptive name of feature (86 values)
 	* timeBodyAccelerationMeanOnXAxisOfPhone                                 
 	* timeBodyAccelerationMeanOnYAxisOfPhone                                 
 	* timeBodyAccelerationMeanOnZAxisOfPhone                                 
 	* timeGravityAccelerationMeanOnXAxisOfPhone                              
	* timeGravityAccelerationMeanOnYAxisOfPhone                              
	* timeGravityAccelerationMeanOnZAxisOfPhone                              
	* timeBodyAccelerationJerkMeanOnXAxisOfPhone                             
	* timeBodyAccelerationJerkMeanOnYAxisOfPhone                             
	* timeBodyAccelerationJerkMeanOnZAxisOfPhone                             
	* timeBodyGyroscopeMeanOnXAxisOfPhone                                    
 	* timeBodyGyroscopeMeanOnYAxisOfPhone                                    
 	* timeBodyGyroscopeMeanOnZAxisOfPhone                                    
 	* timeBodyGyroscopeJerkMeanOnXAxisOfPhone                                
 	* timeBodyGyroscopeJerkMeanOnYAxisOfPhone                                
 	* timeBodyGyroscopeJerkMeanOnZAxisOfPhone                                
 	* timeBodyAccelerationMagnitudeMean                                      
 	* timeGravityAccelerationMagnitudeMean                                   
 	* timeBodyAccelerationJerkMagnitudeMean                                  
 	* timeBodyGyroscopeMagnitudeMean                                         
 	* timeBodyGyroscopeJerkMagnitudeMean                                     
 	* fastFourierTransformBodyAccelerationMeanOnXAxisOfPhone                 
 	* fastFourierTransformBodyAccelerationMeanOnYAxisOfPhone                 
 	* fastFourierTransformBodyAccelerationMeanOnZAxisOfPhone                 
 	* fastFourierTransformBodyAcceleration-meanFreq()OnXAxisOfPhone          
 	* fastFourierTransformBodyAcceleration-meanFreq()OnYAxisOfPhone          
 	* fastFourierTransformBodyAcceleration-meanFreq()OnZAxisOfPhone          
 	* fastFourierTransformBodyAccelerationJerkMeanOnXAxisOfPhone             
 	* fastFourierTransformBodyAccelerationJerkMeanOnYAxisOfPhone             
 	* fastFourierTransformBodyAccelerationJerkMeanOnZAxisOfPhone             
 	* fastFourierTransformBodyAccelerationJerk-meanFreq()OnXAxisOfPhone      
 	* fastFourierTransformBodyAccelerationJerk-meanFreq()OnYAxisOfPhone      
 	* fastFourierTransformBodyAccelerationJerk-meanFreq()OnZAxisOfPhone      
 	* fastFourierTransformBodyGyroscopeMeanOnXAxisOfPhone                    
 	* fastFourierTransformBodyGyroscopeMeanOnYAxisOfPhone                    
 	* fastFourierTransformBodyGyroscopeMeanOnZAxisOfPhone                    
 	* fastFourierTransformBodyGyroscope-meanFreq()OnXAxisOfPhone             
 	* fastFourierTransformBodyGyroscope-meanFreq()OnYAxisOfPhone             
 	* fastFourierTransformBodyGyroscope-meanFreq()OnZAxisOfPhone             
 	* fastFourierTransformBodyAccelerationMagnitudeMean                      
 	* fastFourierTransformBodyAccelerationMagnitude-meanFreq()               
 	* fastFourierTransformBodyAccelerationJerkMagnitudeMean                  
 	* fastFourierTransformBodyAccelerationJerkMagnitude-meanFreq()           
 	* fastFourierTransformBodyGyroscopeMagnitudeMean                         
 	* fastFourierTransformBodyGyroscopeMagnitude-meanFreq()                  
 	* fastFourierTransformBodyGyroscopeJerkMagnitudeMean                     
 	* fastFourierTransformBodyGyroscopeJerkMagnitude-meanFreq()              
 	* angle(tBodyAccelerationMean,gravity)                                   
 	* angle(tBodyAccelerationJerkMean),gravityMean)                          
 	* angle(tBodyGyroscopeMean,gravityMean)                                  
 	* angle(tBodyGyroscopeJerkMean,gravityMean)                              
 	* angle(X,gravityMean)                                                   
 	* angle(Y,gravityMean)                                                   
	* angle(Z,gravityMean)                                                   
 	* timeBodyAccelerationStandardDeviationOnXAxisOfPhone                    
 	* timeBodyAccelerationStandardDeviationOnYAxisOfPhone                    
 	* timeBodyAccelerationStandardDeviationOnZAxisOfPhone                    
 	* timeGravityAccelerationStandardDeviationOnXAxisOfPhone                 
 	* timeGravityAccelerationStandardDeviationOnYAxisOfPhone                 
 	* timeGravityAccelerationStandardDeviationOnZAxisOfPhone                 
 	* timeBodyAccelerationJerkStandardDeviationOnXAxisOfPhone                
 	* timeBodyAccelerationJerkStandardDeviationOnYAxisOfPhone                
 	* timeBodyAccelerationJerkStandardDeviationOnZAxisOfPhone                
 	* timeBodyGyroscopeStandardDeviationOnXAxisOfPhone                       
 	* timeBodyGyroscopeStandardDeviationOnYAxisOfPhone                       
 	* timeBodyGyroscopeStandardDeviationOnZAxisOfPhone                       
 	* timeBodyGyroscopeJerkStandardDeviationOnXAxisOfPhone                   
 	* timeBodyGyroscopeJerkStandardDeviationOnYAxisOfPhone                   
 	* timeBodyGyroscopeJerkStandardDeviationOnZAxisOfPhone                   
 	* timeBodyAccelerationMagnitudeStandardDeviation                         
 	* timeGravityAccelerationMagnitudeStandardDeviation                      
 	* timeBodyAccelerationJerkMagnitudeStandardDeviation                     
 	* timeBodyGyroscopeMagnitudeStandardDeviation                            
 	* timeBodyGyroscopeJerkMagnitudeStandardDeviation                        
 	* fastFourierTransformBodyAccelerationStandardDeviationOnXAxisOfPhone    
 	* fastFourierTransformBodyAccelerationStandardDeviationOnYAxisOfPhone    
 	* fastFourierTransformBodyAccelerationStandardDeviationOnZAxisOfPhone    
 	* fastFourierTransformBodyAccelerationJerkStandardDeviationOnXAxisOfPhone
 	* fastFourierTransformBodyAccelerationJerkStandardDeviationOnYAxisOfPhone
 	* fastFourierTransformBodyAccelerationJerkStandardDeviationOnZAxisOfPhone
 	* fastFourierTransformBodyGyroscopeStandardDeviationOnXAxisOfPhone       
 	* fastFourierTransformBodyGyroscopeStandardDeviationOnYAxisOfPhone       
 	* fastFourierTransformBodyGyroscopeStandardDeviationOnZAxisOfPhone       
 	* fastFourierTransformBodyAccelerationMagnitudeStandardDeviation         
 	* fastFourierTransformBodyAccelerationJerkMagnitudeStandardDeviation     
 	* fastFourierTransformBodyGyroscopeMagnitudeStandardDeviation            
 	* fastFourierTransformBodyGyroscopeJerkMagnitudeStandardDeviation   
  	
mean	numeric
	Mean of each feature by subject and activity


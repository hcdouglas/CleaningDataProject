Variables:
- xTrain is the training data for the specifications.
- xTest is the testing data for the specifications. 
- yTrain and yTest are the training and testing data for the different categories specified in activity_labels.txt.
- subject_test.txt and subject_train.txt specifiy which subject each row of data is for.
- features is the features.txt file which specifies which column matches to which feature

Tidying:
To tidy my data, I first downloaded all of the above variables as tables. Then for the yTrain and yTest I labeled the column as "code" since it is the code for which activity the row is specifying. for xTest and xTrain I assigned the columns as the features from the features datatable. I made the column names for the activity table "code" and "activity". 

run_analysis:
To make X and Y I combined the xTrain and xTest datasets by rows and the yTrain and yTest data sets by rows. For the subject dataset I also combined subjectTrain and subjectTest by rows. Then, I merged X, Y and subject to make my merge data set.Then I selected all of the specifications with mean and std to make the tidy dataset. Then I merged the activities and tidy data sets by code so that there were descriptions of each code. 

Cleaning:
Then I cleaned up the tidy data set by replacing BodyBody with Body, Acc with Acceleration, Gyro with Gyroscope, Mag with Magnitude, t with Time at the beginning of a line, and f with Frequency at the beginning of a line, angle with Angle and gravity with Gravity

Final:
To make my final dataset, I grouped by subject and activity and took the mean of those categories. This was taking the mean of each subjects different activity. I then took this final dataset and made a new txt file called TidyDataSet.txt
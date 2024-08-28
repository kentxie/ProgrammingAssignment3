Data Transformations:
Reads in the test and train subject files together and combines them into a single dataset
Reads in the test and train exercise files that denotes the numeric representation of the activity type for each observation and combines it into a single dataset
Reads in the file the contains the lookup table for the activity type and joins it with the combined exercise file to get the type of activity for each observation
Reads in the measurement datasets for both the test and train set and combines them into a single dataset
Append by column the Activity Data, the Subject Data and the Measurement Data into a single dataset
Read in the file with the measurement column header and removes the index column, leaving behind just the labels for the features
Add the column header for the subject and activity data with the measurement headers
Store the index of the columns we want to keep (i.e. means and std features + the subject and activity type columns) in columnkeep variable
Use lapply to re-format the headers to tidy format and assign it as the column headers for the combined dataset from step 7
Remove any columns we do not want using the columnkeep variable
Create a second tidy dataset with summarized (mean) feature columns, grouped by activity type and subject
Rename columns based on the summarized data

Codebook

Type of activity taken by subject
ID of the test subject
Average Mean of Time Domain Signal Body Linear Acceleration through the X vector
Average Mean of Time Domain Signal Body Linear Acceleration through the Y vector
Average Mean of Time Domain Signal Body Linear Acceleration through the Z vector
Average Standard Deviation of Time Domain Signal Body Linear Acceleration through the X vector
Average Standard Deviation of Time Domain Signal Body Linear Acceleration through the Y vector
Average Standard Deviation of Time Domain Signal Body Linear Acceleration through the Z vector
Average Mean of Time Domain Signal Gravity Acceleration through the X vector
Average Mean of Time Domain Signal Gravity Acceleration through the Y vector
Average Mean of Time Domain Signal Gravity Acceleration through the Z vector
Average Standard Deviation of Time Domain Signal Gravity Acceleration through the X vector
Average Standard Deviation of Time Domain Signal Gravity Acceleration through the Y vector
Average Standard Deviation of Time Domain Signal Gravity Acceleration through the Z vector
Average Mean of Time Domain Signal Body Acceleration Jerk through the X vector
Average Mean of Time Domain Signal Body Acceleration Jerk through the Y vector
Average Mean of Time Domain Signal Body Acceleration Jerk through the Z vector
Average Standard Deviation of Time Domain Signal Body Acceleration Jerk through the X vector
Average Standard Deviation of Time Domain Signal Body Acceleration Jerk through the Y vector
Average Standard Deviation of Time Domain Signal Body Acceleration Jerk through the Z vector
Average Mean of Time Domain Signal Body Gyroscope through the X vector
Average Mean of Time Domain Signal Body Gyroscope through the Y vector
Average Mean of Time Domain Signal Body Gyroscope through the Z vector
Average Standard Deviation of Time Domain Signal Body Gyroscope through the X vector
Average Standard Deviation of Time Domain Signal Body Gyroscope through the Y vector
Average Standard Deviation of Time Domain Signal Body Gyroscope through the Z vector
Average Mean of Time Domain Signal Body Gyroscope Jerk through the X vector
Average Mean of Time Domain Signal Body Gyroscope Jerk through the Y vector
Average Mean of Time Domain Signal Body Gyroscope Jerk through the Z vector
Average Standard Deviation of Time Domain Signal Body Gyroscope Jerk through the X vector
Average Standard Deviation of Time Domain Signal Body Gyroscope Jerk through the Y vector
Average Standard Deviation of Time Domain Signal Body Gyroscope Jerk through the Z vector
Average Mean of Time Domain Signal Body Acceleration Magnitude 
Average Standard Deviation of Time Domain Signal Body Acceleration Magnitude 
Average Mean of Time Domain Signal Gravity Acceleration Magnitude 
Average Standard Deviation of Time Domain Signal Gravity Acceleration Magnitude 
Average Mean of Time Domain Signal Body Acceleration Jerk Magnitude 
Average Standard Deviation of Time Domain Signal Body Acceleration Jerk Magnitude 
Average Mean of Time Domain Signal Gyroscope Magnitude 
Average Standard Deviation of Time Domain Signal Gyroscope Magnitude 
Average Mean of Time Domain Signal Gyroscope Jerk Magnitude 
Average Standard Deviation of Time Domain Signal Gyroscope Jerk Magnitude 
Average Mean of Frequency Domain Signal Body Acceleration Jerk through the X vector
Average Mean of Frequency Domain Signal Body Acceleration Jerk through the Y vector
Average Mean of Frequency Domain Signal Body Acceleration Jerk through the Z vector
Average Standard Deviation of Frequency Domain Signal Body Acceleration Jerk through the X vector
Average Standard Deviation of Frequency Domain Signal Body Acceleration Jerk through the Y vector
Average Standard Deviation of Frequency Domain Signal Body Acceleration Jerk through the Z vector
Average Mean Frequency of Frequency Domain Signal Body Acceleration Jerk through the X vector
Average Mean Frequency of Frequency Domain Signal Body Acceleration Jerk through the Y vector

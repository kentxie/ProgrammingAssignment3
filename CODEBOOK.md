Data Transformations:
1.Reads in the test and train subject files together and combines them into a single dataset
2. Reads in the test and train exercise files that denotes the numeric representation of the activity type for each observation and combines it into a single dataset
3. Reads in the file the contains the lookup table for the activity type and joins it with the combined exercise file to get the type of activity for each observation
4. Reads in the measurement datasets for both the test and train set and combines them into a single dataset
5. Append by column the Activity Data, the Subject Data and the Measurement Data into a single dataset
6. Read in the file with the measurement column header and removes the index column, leaving behind just the labels for the features
7. Add the column header for the subject and activity data with the measurement headers
8. Store the index of the columns we want to keep (i.e. means and std features + the subject and activity type columns) in columnkeep variable
9. Use lapply to re-format the headers to tidy format and assign it as the column headers for the combined dataset from step 7
10. Convert the activity names to lower case and remove the '_'
11. Remove any columns we do not want using the columnkeep variable
12. Create a second tidy dataset with summarized (mean) feature columns, grouped by activity type and subject
13. Give updated column names post-summarizing the data

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

Data Transformations:
1. Reads in the test and train subject files together and combines them into a single dataset
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

1. ActivityType - Type of activity taken by subject
2. TestSubjectId - ID of the test subject
3. AvgTimeBodyAccMeanX - Average Mean of Time Domain Signal Body Linear Acceleration through the X vector
4. AvgTimeBodyAccMeanY - Average Mean of Time Domain Signal Body Linear Acceleration through the Y vector
5. AvgTimeBodyAccMeanZ - Average Mean of Time Domain Signal Body Linear Acceleration through the Z vector
6. AvgTimeBodyAccStdX - Average Standard Deviation of Time Domain Signal Body Linear Acceleration through the X vector
7. AvgTimeBodyAccStdY - Average Standard Deviation of Time Domain Signal Body Linear Acceleration through the Y vector
8. AvgTimeBodyAccStdZ - Average Standard Deviation of Time Domain Signal Body Linear Acceleration through the Z vector
9. AvgTimeGravityAccMeanX - Average Mean of Time Domain Signal Gravity Acceleration through the X vector
10. AvgTimeGravityAccMeanY - Average Mean of Time Domain Signal Gravity Acceleration through the Y vector
11. AvgTimeGravityAccMeanZ - Average Mean of Time Domain Signal Gravity Acceleration through the Z vector
12. AvgTimeGravityAccStdX - Average Standard Deviation of Time Domain Signal Gravity Acceleration through the X vector
13. AvgTimeGravityAccStdY - Average Standard Deviation of Time Domain Signal Gravity Acceleration through the Y vector
14. AvgTimeGravityAccStdZ - Average Standard Deviation of Time Domain Signal Gravity Acceleration through the Z vector
15. AvgTimeBodyAccJerkMeanX - Average Mean of Time Domain Signal Body Acceleration Jerk through the X vector
16. AvgTimeBodyAccJerkMeanY - Average Mean of Time Domain Signal Body Acceleration Jerk through the Y vector
17. AvgTimeBodyAccJerkMeanZ - Average Mean of Time Domain Signal Body Acceleration Jerk through the Z vector
18. AvgTimeBodyAccJerkStdX - Average Standard Deviation of Time Domain Signal Body Acceleration Jerk through the X vector
19. AvgTimeBodyAccJerkStdY - Average Standard Deviation of Time Domain Signal Body Acceleration Jerk through the Y vector
20. AvgTimeBodyAccJerkStdZ - Average Standard Deviation of Time Domain Signal Body Acceleration Jerk through the Z vector
21. AvgTimeBodyGyroMeanX - Average Mean of Time Domain Signal Body Gyroscope through the X vector
22. AvgTimeBodyGyroMeanY - Average Mean of Time Domain Signal Body Gyroscope through the Y vector
23. AvgTimeBodyGyroMeanZ - Average Mean of Time Domain Signal Body Gyroscope through the Z vector
24. AvgTimeBodyGyroStdX - Average Standard Deviation of Time Domain Signal Body Gyroscope through the X vector
25. AvgTimeBodyGyroStdY - Average Standard Deviation of Time Domain Signal Body Gyroscope through the Y vector
26. AvgTimeBodyGyroStdZ - Average Standard Deviation of Time Domain Signal Body Gyroscope through the Z vector
27. AvgTimeBodyGyroJerkMeanX - Average Mean of Time Domain Signal Body Gyroscope Jerk through the X vector
28. AvgTimeBodyGyroJerkMeanY - Average Mean of Time Domain Signal Body Gyroscope Jerk through the Y vector
29. AvgTimeBodyGyroJerkMeanZ - Average Mean of Time Domain Signal Body Gyroscope Jerk through the Z vector
30. AvgTimeBodyGyroJerkStdX - Average Standard Deviation of Time Domain Signal Body Gyroscope Jerk through the X vector
31. AvgTimeBodyGyroJerkStdY - Average Standard Deviation of Time Domain Signal Body Gyroscope Jerk through the Y vector
32. AvgTimeBodyGyroJerkStdZ - Average Standard Deviation of Time Domain Signal Body Gyroscope Jerk through the Z vector
33. AvgTimeBodyAccMagMean - Average Mean of Time Domain Signal Body Acceleration Magnitude 
34. AvgTimeBodyAccMagStd - Average Standard Deviation of Time Domain Signal Body Acceleration Magnitude 
35. AvgTimeGravityAccMagMean - Average Mean of Time Domain Signal Gravity Acceleration Magnitude 
36. AvgTimeGravityAccMagStd - Average Standard Deviation of Time Domain Signal Gravity Acceleration Magnitude 
37. AvgTimeBodyAccJerkMagMean - Average Mean of Time Domain Signal Body Acceleration Jerk Magnitude 
38. AvgTimeBodyAccJerkMagStd - Average Standard Deviation of Time Domain Signal Body Acceleration Jerk Magnitude 
39. AvgTimeBodyGyroMagMean - Average Mean of Time Domain Signal Gyroscope Magnitude 
40. AvgTimeBodyGyroMagStd - Average Standard Deviation of Time Domain Signal Gyroscope Magnitude 
41. AvgTimeBodyGyroJerkMagMean - Average Mean of Time Domain Signal Gyroscope Jerk Magnitude 
42. AvgTimeBodyGyroJerkMagStd - Average Standard Deviation of Time Domain Signal Gyroscope Jerk Magnitude 
43. AvgFreqDomSignalBodyAccMeanX - Average Mean of Frequency Domain Signal Body Acceleration Jerk through the X vector
44. AvgFreqDomSignalBodyAccMeanY - Average Mean of Frequency Domain Signal Body Acceleration Jerk through the Y vector
45. AvgFreqDomSignalBodyAccMeanZ - Average Mean of Frequency Domain Signal Body Acceleration Jerk through the Z vector
46. AvgFreqDomSignalBodyAccStdX - Average Standard Deviation of Frequency Domain Signal Body Acceleration Jerk through the X vector
47. AvgFreqDomSignalBodyAccStdY - Average Standard Deviation of Frequency Domain Signal Body Acceleration Jerk through the Y vector
48. AvgFreqDomSignalBodyAccStdZ - Average Standard Deviation of Frequency Domain Signal Body Acceleration Jerk through the Z vector
49. AvgFreqDomSignalBodyAccMeanFreqX - Average Mean Frequency of Frequency Domain Signal Body Acceleration Jerk through the X vector
50. AvgFreqDomSignalBodyAccMeanFreqY - Average Mean Frequency of Frequency Domain Signal Body Acceleration Jerk through the Y vector


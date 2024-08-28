The script does the following steps:

1. Loads the dplyr library
2. Set up all the paths to the files needed to be imported
3. Reads in the test and train subject files together and combines them into a single dataset
4. Reads in the test and train exercise files that denotes the numeric representation of the activity type for each observation and combines it into a single dataset
5. Reads in the file the contains the lookup table for the activity type and joins it with the combined exercise file to get the type of activity for each observation
6. Reads in the measurement datasets for both the test and train set and combines them into a single dataset
7. Append by column the Activity Data, the Subject Data and the Measurement Data into a single dataset
8. Read in the file with the measurement column header and removes the index column, leaving behind just the labels for the features
9. Add the column header for the subject and activity data with the measurement headers 
10. Store the index of the columns we want to keep (i.e. means and std features + the subject and activity type columns) in columnkeep variable
11. Use lapply to re-format the headers to tidy format and assign it as the column headers for the combined dataset from step 7
12. Convert the activity names to lower case and remove the '_'
13. Remove any columns we do not want using the columnkeep variable
14. Create a second tidy dataset with summarized (mean) feature columns, grouped by activity type and subject
15. Give updated column names post-summarizing the data

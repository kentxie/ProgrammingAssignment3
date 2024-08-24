library(dplyr)

## set up all the paths to the files I need to import
features_path <- './R/Coursera/UCI HAR Dataset/features.txt'
activity_path <- './R/Coursera/UCI HAR Dataset/activity_labels.txt'

test_path <- './R/Coursera/UCI HAR Dataset/test/X_test.txt'
test_exercise_path <- './R/Coursera/UCI HAR Dataset/test/y_test.txt'
test_subject_path <- './R/Coursera/UCI HAR Dataset/test/subject_test.txt'

train_path <- './R/Coursera/UCI HAR Dataset/train/X_train.txt'
train_exercise_path <- './R/Coursera/UCI HAR Dataset/train/y_train.txt'
train_subject_path <- './R/Coursera/UCI HAR Dataset/train/subject_train.txt'

## read in the test subject files and combined them together
test_subject <- read.csv(test_subject_path,header = FALSE)
train_subject <- read.csv(train_subject_path,header = FALSE)
subject <- rbind(test_subject,train_subject)

## read in the exercise files and combined them
test_exercise <- read.csv(test_exercise_path,header=FALSE)
train_exercise <- read.csv(train_exercise_path,header=FALSE)
exercise <- rbind(test_exercise,train_exercise)

## read in the activity/exercise labels and use it as a lookup column for the exercise data
activity <- read.csv(activity_path,header=FALSE,sep = ' ')
activity_data <- merge(exercise,activity,by.x = 'V1', by.y = 'V1', sort = FALSE)

## read in the measurement data for both the test and train set and combined them
test_set <- read.csv(test_path,header=FALSE,sep = '')
train_set <- read.csv(train_path,header=FALSE,sep = '')
combined <- rbind(test_set,train_set)

## combine the activity data, the subject data, and the measurement data
data <- cbind(subject,activity_data,combined)

## read in the column header from features file (but remove the index column) and add headers for the activity data and the subject data
features <- read.csv('./R/Coursera/UCI HAR Dataset/features.txt', header = FALSE, sep = '')[,2]
header <- c('TestSubjectId','ActivityId','ActivityType',features)

## get the column index of columns we would like to keep, specifically the subject, activity, and mean and standard deviation columns
columnkeep <- grep('mean[a-zA-Z]*\\(|std|TestSubjectId|ActivityType',header)

## use lapply to format the column headers, setting up proper format of mean and std
## translating the t and f at the start to Time and Frequency Domain Signal
## remove repeating Body and removing any non-alphanumeric characters
colnames(data) <- unlist(lapply(header, function(x) {
        if(grepl('mean|std',x)){
                x <- gsub('mean','Mean',x)
                x <- gsub('std','Std',x)
        }
        x <- sub('^t','Time',x)
        x <- sub('^f','FreqDomSignal',x)
        x <- sub('BodyBody','Body',x) # fix label where Body is repeated
        x <- gsub('\\(|\\)|-|,','',x) # remove non-alphanumeric characters
}
)
)
## remove any columns that is not measuring the mean or standard deviation
refined_data <- data[,columnkeep]

##create second tidy table that averages all metric columns by Test Subject Id and Activity Type
tidydata <- refined_data %>% group_by(ActivityType,TestSubjectId) %>% summarise_all('mean')

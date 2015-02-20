### Run Analysis script ###

## Function definitions

merge_datasets <- function(dataset1, dataset2) {
  # Guard condition
  if (ncol(dataset1) != ncol(dataset2)) stop("Can't merge - dimension mismatch")
  
  return(rbind(dataset1, dataset2))
}

## Script

# read data into R
x_train <- read.table('UCI HAR Dataset/train/X_train.txt', header=FALSE)
y_train <- read.table('UCI HAR Dataset/train/y_train.txt', header=FALSE)
subject_train <- read.table('UCI HAR Dataset/train/subject_train.txt', header=FALSE)

x_test <- read.table('UCI HAR Dataset/test/X_test.txt', header=FALSE)
y_test <- read.table('UCI HAR Dataset/test/y_test.txt', header=FALSE)
subject_test <- read.table('UCI HAR Dataset/test/subject_test.txt', header=FALSE)

features_frame <- read.table('UCI HAR Dataset/features.txt')
activity_labels <- read.table('UCI HAR Dataset/activity_labels.txt')

# (1) merge datasets
x_full <- merge_datasets(x_train, x_test)
y_full <- merge_datasets(y_train, y_test)
subject <- merge_datasets(subject_train, subject_test)

# (2) and (4) add descriptive column names and extract only means and stds
features <- features_frame[[2]]
names(x_full) <- features
names(subject) <- c("subject")

mean_indexes <- grep("mean", features, ignore.case=TRUE)
std_indexes <- grep("std", features, ignore.case=TRUE)
mean_std_indexes <- c(mean_indexes, std_indexes)
x_mean_std <- x_full[,mean_std_indexes]

# (3) descriptive activity names
activity <- sapply(y_full[[1]], function(e) { activity_labels[[2]][e]})

# merge subjects and activity labels into the dataset of input variables
data <- cbind(x_mean_std, subject, activity)

# (5) Independent dataset with the average of each variable for each activity 
# and each subject.
library(reshape2)
col_size = ncol(data)
melted_data <- melt(data, id=c(col_size-1, col_size), measure.vars=1:(col_size-2), )
new_data <- dcast(melted_data, subject + activity ~ variable, mean)

# write new tidy dataset to file
write.table(new_data, file="new_tidy_dataset.txt")


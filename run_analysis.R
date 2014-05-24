library(reshape2)

# This program assumes the the working directory is the
# root of the Samsung data.

# Read the list of features, change them to lower case and remove special characters.
features <- read.table("features.txt", col.names = c("featureid", "featurename"))
features$featurename <- sapply(features$featurename, tolower)
features$featurename <- sapply(features$featurename, gsub, pattern = "[^a-z0-9]+", replacement = "")

# Read all the data into memory, combining the training and test sets.
classNames <- read.table("activity_labels.txt", col.names = c("classid", "classname"))
rawData <- read.table("test/X_test.txt", col.names = features$featurename)
class <- read.table("test/y_test.txt", col.names = c("classid"))
subject <- read.table("test/subject_test.txt", col.names = c("subjectid"))
rawData <- rbind(rawData, read.table("train/X_train.txt", col.names = features$featurename))
class <- rbind(class, read.table("train/y_train.txt", col.names = c("classid")))
subject <- rbind(subject, read.table("train/subject_train.txt", col.names = c("subjectid")))

# Pick out all the features that are a mean or standard deviation.
meanFeatures <- grep("mean", features$featurename)
stdFeatures <- grep("std", features$featurename)
featuresOfInterest <- features[sort(c(meanFeatures, stdFeatures)),]
dataOfInterest <- rawData[,featuresOfInterest$featureid]

# Write the list of selected features to a file so it can be integrated into documentation.
write.table(sort(featuresOfInterest$featurename), "codebook.txt", quote = FALSE, row.names = FALSE)

# Merge all the input date into one large table.
mergedData <- cbind(subjectid = subject$subjectid, classid = class$classid, dataOfInterest, classname = classNames$classname[class$classid])

# Melt the data so each measurement is in a separate row instead of column.
rearrangedData <- melt(mergedData, id = c("subjectid", "classname"), measure.vars = featuresOfInterest$featurename)

# Compute the mean of each measurement by subject, class, and variable.
meanData <- aggregate(
    rearrangedData$value,
    list(
        subjectid = rearrangedData$subjectid,
        classname = rearrangedData$classname,
        variable = rearrangedData$variable),
    mean)
colnames(meanData) <- c("subjectid", "classname", "variable", "mean")

# Save the data to disk.
write.csv(meanData, "tidyData.txt")

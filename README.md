Getting and Cleaning Data - Course Project
-------


# Running the script

To run the script, simply follow these instructions. When the script completes, the working directory will contain a new file, "tidydata.csv" with the script's output. The same directory will contain a file called "codebook.txt" with a list of all the fields put into the tidydata file.

* Download the Samsung data from the links section below.
* Unzip it.
* Set the R working folder to the root folder of the Samsung data.
* Run the script, "run_analysis.R".

# Codebook

The project instruction specified that only the values that are means or standard deviations of the raw data should be included and suggested that not all of them were necessary. Since there were only 86 columns, I chose to keep them all. If subsequent analysis proves that a value is not needed, the script can be easily modified and re-executed.

* angletbodyaccjerkmeangravitymean
* angletbodyaccmeangravity
* angletbodygyrojerkmeangravitymean
* angletbodygyromeangravitymean
* anglexgravitymean
* angleygravitymean
* anglezgravitymean
* fbodyaccjerkmeanfreqx
* fbodyaccjerkmeanfreqy
* fbodyaccjerkmeanfreqz
* fbodyaccjerkmeanx
* fbodyaccjerkmeany
* fbodyaccjerkmeanz
* fbodyaccjerkstdx
* fbodyaccjerkstdy
* fbodyaccjerkstdz
* fbodyaccmagmean
* fbodyaccmagmeanfreq
* fbodyaccmagstd
* fbodyaccmeanfreqx
* fbodyaccmeanfreqy
* fbodyaccmeanfreqz
* fbodyaccmeanx
* fbodyaccmeany
* fbodyaccmeanz
* fbodyaccstdx
* fbodyaccstdy
* fbodyaccstdz
* fbodybodyaccjerkmagmean
* fbodybodyaccjerkmagmeanfreq
* fbodybodyaccjerkmagstd
* fbodybodygyrojerkmagmean
* fbodybodygyrojerkmagmeanfreq
* fbodybodygyrojerkmagstd
* fbodybodygyromagmean
* fbodybodygyromagmeanfreq
* fbodybodygyromagstd
* fbodygyromeanfreqx
* fbodygyromeanfreqy
* fbodygyromeanfreqz
* fbodygyromeanx
* fbodygyromeany
* fbodygyromeanz
* fbodygyrostdx
* fbodygyrostdy
* fbodygyrostdz
* tbodyaccjerkmagmean
* tbodyaccjerkmagstd
* tbodyaccjerkmeanx
* tbodyaccjerkmeany
* tbodyaccjerkmeanz
* tbodyaccjerkstdx
* tbodyaccjerkstdy
* tbodyaccjerkstdz
* tbodyaccmagmean
* tbodyaccmagstd
* tbodyaccmeanx
* tbodyaccmeany
* tbodyaccmeanz
* tbodyaccstdx
* tbodyaccstdy
* tbodyaccstdz
* tbodygyrojerkmagmean
* tbodygyrojerkmagstd
* tbodygyrojerkmeanx
* tbodygyrojerkmeany
* tbodygyrojerkmeanz
* tbodygyrojerkstdx
* tbodygyrojerkstdy
* tbodygyrojerkstdz
* tbodygyromagmean
* tbodygyromagstd
* tbodygyromeanx
* tbodygyromeany
* tbodygyromeanz
* tbodygyrostdx
* tbodygyrostdy
* tbodygyrostdz
* tgravityaccmagmean
* tgravityaccmagstd
* tgravityaccmeanx
* tgravityaccmeany
* tgravityaccmeanz
* tgravityaccstdx
* tgravityaccstdy
* tgravityaccstdz

# Links

[Samsung data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

[Description of the Samsung data](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

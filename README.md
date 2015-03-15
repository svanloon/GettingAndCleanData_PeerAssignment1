# README
This repo is a homework assignment for Coursera's Getting and Cleaning Data.  The main objective is to tidy the UCI HAR Dataset - ([Description](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) | [Dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)) to produce this [tidy_data.txt](tidy_data.txt)

# Running the Analysis
The analysis can be run simplying by sourcing [run_analysis.R](run_analysis.R).   

```r
source("run_analysis.R")
```

This will produce 2 data frames and a file, which can be explored further

1. "mergedActivityData" is a data.frame that contains the merged data for the test and training data.

2. The tidy_data is a data.frame that contains tidy data.

3. The [tidy_data.txt](tidy_data.txt) will be generated.  A description of the data is available in the [CodeBook.md](CodeBook.md)

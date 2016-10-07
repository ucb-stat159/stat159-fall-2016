# Script to be called from command line to perform unit tests:
# Rscript test-that.R

library(testthat)

# loading all function files
files <- list.files("functions")
for (i in 1:length(files)) {
  source(paste0("functions/", files[i]))
}

# run unit tests in folder 'tests/'
test_dir("tests", reporter = "Summary")

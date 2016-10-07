This folder contains basic examples of unit tests with the R package `"testthat"`

File structure:

```
test-that/
   README.md
   test-that.R
   functions/
      add.R
      better-add.R
      range-value.R
   tests/
      test-add.R
      test-better-add.R
      test-range-value.R
```

### Runing tests from command line

One way to run the tests is execute the script `test-that.R` from the command line.
Assuming that you are positioned in this directory, run the command:

```bash
Rscript test-that.R
```


### Running tests from R console

Another way to run the unit tests is from the R concole (e.g. from RStudio).
Assuming that your working directory if `test-that/`, then do:

```R
source("test-that.R")
```


### Running individual test files

You can also run each individual test file (R scripts inside `tests/`).
For example, here is how to run the tests in `test-range-value.R`:

```bash
cd tests
Rscript -e "library(testthat); test_file('test-range-value.R')"
```


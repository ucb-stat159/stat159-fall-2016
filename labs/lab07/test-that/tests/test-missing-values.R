# load the source code of the functions to be tested
source("../functions/missing-values.R")


# context with one test that groups expectations
context("Test for missing value") 


test_that("missing value", {
  x <- c(1, 2, 3, 4, 5)
  y <- c(1, 2, 3, 4, NA)
  z <- c(1, NA, 3, 4, NA)
  nas <- rep(NA, 10)
  
  expect_equal(missing_values(x), 0)
  expect_length(missing_values(x), 1)
  expect_gte(missing_values(x), 0)
  expect_equal(missing_values(y), 1)
  expect_length(missing_values(y), 1)
  expect_equal(missing_values(z), 2)
  expect_length(missing_values(z), 1)
  expect_equal(missing_values(nas), 10)
})


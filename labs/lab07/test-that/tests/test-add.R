# load the source code of the functions to be tested
source("../functions/add.R")

context("Basic Addition")

test_that("add is numeric", {
  expect_equal(add(1, 1), 2)
  expect_length(add(1, 1), 1)
  expect_equal(add(1:5, 6:10), c(7, 9, 11, 13, 15))
  expect_error(add("a", "b"))
})

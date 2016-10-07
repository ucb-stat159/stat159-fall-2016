# load the source code of the functions to be tested
source("../functions/better-add.R")

context("Better Addition")

test_that("add is numeric", {
  expect_equal(add(1, 1), 2)
  expect_equal(add(1:5, 6:10), c(7, 9, 11, 13, 15))
  expect_equal(add("a", "b"), "a b")
  expect_equal(add(1, 2), 3)
})


test_that("add numeric", {
  expect_equal(add_numeric(1, 1), 2)
  expect_equal(add_numeric(1:5, 6:10), c(7, 9, 11, 13, 15))
})


test_that("add character", {
  expect_equal(add_character('1', '1'), '1 1')
  expect_equal(add_character("a", 1), "a 1")
  expect_equal(add_character(1, "b"), "1 b")
})

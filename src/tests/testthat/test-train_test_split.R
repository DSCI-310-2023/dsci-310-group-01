library(testthat)
source("../src/R/test_train_split.R")
source("../src/tests/testthat/helper-test_train_split.R")

test_that("train_test_split should ask the user to input a valid integer", {
  expect_error(test_train_split(test_df, 1.1, "rating"))
  expect_error(test_train_split(test_df, 0, "rating"))
})

test_that("train_test_split should ask the user to enter a valid column name present within the data frame", {
  expect_error(test_train_split(test_df, 0.5, "name"))
})

test_that("train_test_split should return two data frames, one for testing and one for training", {
  expect_type(test_train_split(test_df, 0.7, "genre"), "list")
})

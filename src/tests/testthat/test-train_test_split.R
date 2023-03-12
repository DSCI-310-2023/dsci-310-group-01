library(testthat)
source("../src/R/train_test_split.R")
source("../src/tests/testthat/helper_train_test_split.R")

test_that("train_test_split should ask the user to input a valid integer", {
  expect_error(splittingData(test_df, 1.1, "rating"))
  expect_error(splittingData(test_df, 0, "rating"))
})

test_that("train_test_split should ask the user to enter a valid column name present within the data frame", {
  expect_error(splittingData(test_df, 0.5, "name"))
})

test_that("train_test_split should return two data frames, one for testing and one for training", {
  expect_type(splittingData(test_df, 0.5, "genre"), "list")
})

library(testthat)
source("../../src/R/train_test_split.R")
test_that("train_test_split should ask the user to input a valid integer", {
  expect_error(train_test_split(test_df, 1.1, "rating"))
  expect_error(train_test_split(test_df, 0, "rating"))
  expect_error(train_test_split(test_df, "a", "rating"))
})

test_that("train_test_split should ask the user to enter a valid column name present within the data frame", {
  expect_error(train_test_split(test_df, 0.5, "name"))
  expect_error(train_test_split(test_df, 0.6, 2))
})

test_that("train_test_split should return two data frames, one for testing and one for training", {
  expect_type(train_test_split(test_df, 0.7, "genre"), "list")
})
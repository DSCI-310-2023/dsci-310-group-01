library(testthat)
source("../../src/R/clean_data.R")

test_that("clean_data should report an error when a data frame is not inputed", {
  expect_error(clean_data(5, "team"))
  expect_error(clean_data("notDataFrame", "department"))
  expect_error(clean_data(TRUE, c("no_of_workers", "department")))
})

test_that("clean_data should report an error when columns names are incorrect", {
  expect_error(clean_data(test_data, c("department","no_of_worker")))
  expect_error(clean_data(test_data, c("TEAM")))
  expect_error(clean_data(test_data, c("")))
})

test_that("clean_data should output a data frame with only two columns (excluding team)", {
  expect_equivalent(clean_data(test_data, "team"), test_data_two_columns)
})

test_that("clean_data should output a data frame with only one columns (only department)", {
  expect_equivalent(clean_data(test_data, c("team","no_of_workers")), test_data_one_column)
})
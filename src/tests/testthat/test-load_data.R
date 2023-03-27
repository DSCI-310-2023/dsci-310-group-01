library(testthat)
source("../../src/R/load_data.R")
test_that("`load_data` should report an error when a string of a URL is not inputed", {
  expect_error(load_data(not_string1))
  expect_error(load_data(c(not_string2)))
})

test_that("`load_data` should return a data frame", {
  expect_s3_class(load_data(test_url), "data.frame")
})

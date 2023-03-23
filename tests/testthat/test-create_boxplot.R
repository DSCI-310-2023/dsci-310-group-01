library(testthat)
source("../../src/R/create_boxplot.R")

test_that("create_boxplot should report an error when a data frame is not inputed", {
  expect_error(create_boxplot(not_df1, test_x, test_y, test_title, xlab, ylab))
  expect_error(create_boxplot(not_df2, test_x, test_y, test_title, xlab, ylab))
})

test_that("create_boxplot should report an error when y_var is not numerical", {
  expect_error(create_boxplot(test_df, test_x, not_y1, test_title, xlab, ylab))
  expect_error(create_boxplot(test_df, test_x, not_y2, test_title, xlab, ylab))
})

test_that("`create_boxplot` shoudl return a ggplot object", {
  expect_s3_class(create_boxplot(test_df, test_x, test_y, test_title, xlab, ylab), class = "ggplot")
})
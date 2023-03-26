#' Splitting test data into testing and training data
#'
#' Creates two data frames, one for testing and one for training, 
#' from the parent data frame
#'
#' @param data_frame A data frame or data frame extension (e.g. a tibble).
#' @param train_percent The percent of the parent dataframe to be train-test split 
#' @param col_name The column name to group by in the testing dataframe
#'
#' @return A list with two data frames
#'   A user-input percent of the parent dataframe training dataframe split of the parent dataframe 
#'   A user-input percent's compliment of the parent dataframe testing dataframe split of the parent dataframe 
#' 
#' @export
#'
#' @examples
#' train_test_split(garment_Data, 0.75, "ID")
"This file ensures we get a user specfied percent break within the dataframe to
allow us to fetch a testing and training data frame that will be passed forward
into analytical methods such as lasso and forward regression models

Usage: src/R/train_test_split.R <percent> <col_name> <out_dir>
" -> doc
source("./train_test_split.R")

suppressPackageStartupMessages({
  library(tidyverse)
  library(broom)
  library(GGally)
  library(leaps)
  library(glmnet)
  library(docopt)
})

opt <- docopt(doc)

c(train_data, test_data) = train_test_split(opt$df, opt$percent, opt$col_name)

write_csv(train_data, paste0(opt$out_dir, "/train_data.csv"))
write_csv(test_data, paste0(opt$out_dir, "/test_data.csv"))
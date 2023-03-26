#' From a given data frame drops selected columns and creates a new data frame
#'
#' @param data A data frame or tibble
#' @param columns Names of columns to be dropped from the data frame
#'
#' @return A new data frame from the old data frame with selected columns dropped 
#'
#' @export
#' 
#' @examples
#' clean_data(garments_data, c("data","team"))
#' 

" The clean_data function makes sure that the dataset being used in all following
processes and evaluation methods is cleaned and contains only those variables of 
interest

Usage: src/R/clean_data.R <df> <cols> <out_dir>
" -> doc

suppressPackageStartupMessages({
  library(tidyverse)
  library(broom)
  library(GGally)
  library(leaps)
  library(glmnet)
  library(docopt)
})

source("/clean_data.R")
opt <- docopt(doc)

clean_data = clean_data(opt$df, opt$cols)
  
write_csv(clean_data, paste0(opt$out_dir, "/clean_data.csv"))
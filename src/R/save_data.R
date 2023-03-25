#author: Longfei Guan
#date: 2022-03-24

"This scripts reads a dataset from the given URL and saves it as a csv file named 'data.csv'.

Usage: src/R/save_data.R <file_path> <out_dir>
" -> doc

suppressPackageStartupMessages({
  library(tidyverse)
  library(broom)
  library(GGally)
  library(leaps)
  library(glmnet)
  library(docopt)
})

options(repr.plot.width = 10, repr.plot.height = 14)

opt <- docopt(doc)

data<-load_data(doc$file_path)

write_csv(data, paste0(opt$out_dir, "/data.csv"))

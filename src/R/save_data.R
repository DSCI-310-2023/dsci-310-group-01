#author: Longfei Guan
#date: 2022-03-24

"This scripts reads a dataset from the given URL and saves it as a csv file named 'data.csv'.

suppressPackageStartupMessages({
  library(tidyverse)
  library(broom)
  library(GGally)
  library(leaps)
  library(glmnet)
  library(docopt)
})

options(repr.plot.width = 10, repr.plot.height = 14)

data<-load_data("https://7e6cd356-86ad-4874-abc7-3a69bbbc39e6.filesusr.com/ugd/c5a545_c1b17c070c984dfcb14cf1c3bb0b6e67.csv?dn=garments_worker_productivity.csv")

write_csv(data, "/data.csv")

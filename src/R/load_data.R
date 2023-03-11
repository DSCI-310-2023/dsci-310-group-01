#' loads the data from the Internet and saves it locally as a csv file
#'
#' @param url the path to the input file (a URL).
#' @param out_dir a path where to write the file
#'
#' @return a csv file from the given URL
#'
#' @export
#'
#' @examples
#' load_data(garments_data, c("data","team"))

library(tidyverse)

load_data <- function(url, out_dir) {
  # Create out_dir if it does not exist
  if (!dir.exists(dirname(out_dir))) {
    dir.create(dirname(out_dir), recursive = TRUE)
  }

  # load data
  data <- read_csv(url)

  # save data as a csv file
  write_csv(data, out_dir)
}

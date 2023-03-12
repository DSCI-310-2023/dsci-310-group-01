#' loads the data from the Internet and returns a data frame
#'
#' @param url the path to the input file (a string of a URL)
#'
#' @return a data frame with the data from the given URL
#'
#' @export
#'
#' @examples
#' load_data("https://7e6cd356-86ad-4874-abc7-3a69bbbc39e6.filesusr.com/ugd/c5a545_c1b17c070c984dfcb14cf1c3bb0b6e67.csv?dn=garments_worker_productivity.csv")


load_data <- function(url) {
  
  # Check if url is a string
  if (!is.character(url)) {
    stop("url must be a string. Please try again.")
  }
  
  # Create tempfile and download file
  temp <- tempfile()
  url <- url
  suppressMessages(download.file(url, temp, mode = "wb"))
  
  # Read csv and unlink tempfile
  data <- read.csv(temp)
  unlink(temp)
  return(data)
  
}
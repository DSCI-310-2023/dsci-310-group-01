#' Splitting test data into testing and training data
#'
#' Creates two data frames, one for testing and one for training, 
#' from the parent data frame
#'
#' @param data_frame A data frame or data frame extension (e.g. a tibble).
#' @param train_percent The percent of the parent dataframe to be train-test split 
#' @param col_name The column name to group by in the testing dataframe
#'
#' @return Two data frames
#'   A user-input percent of the parent dataframe training dataframe split of the parent dataframe 
#'   A user-input percent's compliment of the parent dataframe testing dataframe split of the parent dataframe 
#' 
#' @export
#'
#' @examples
#' test_train_split(garment_Data, 0.75, 'quarter')

test_train_split <- function(df, train_percent, col_name) {
  if (!is.data.frame(df)) {
    stop("data must be a data frame. Please try again.")
  }
  
  if (train_percent <= 0 || train_percent > 1) {
    stop("train_percent must be between 0 (exclusive) and 1 (inclusive). Please try again.")
  }
  
  col_names <- names(df)
  
  if (!(col_name %in% col_names)) {
    stop("Please enter a column name from within the provided data frame")
  }
  
  training_data <- sample_n(df, size = nrow(df) * train_percent,
                            replace = FALSE
  )
  
  testing_data <- anti_join(df,
                            training_data,
                            by = {{col_name}}
                            
  )
  
  return (list(training_data, testing_data))
}

#' Create a ggplot boxplot
#' 
#' A function for creating a side by side boxplot
#'
#' @param data A data frame or tibble.
#' @param x_var Variable for the x axis of the plot
#' @param y_var Variable for the y axis of the plot
#' @param title Title of the plot 
#' @param x_title Title of the x axis 
#' @param y_title Title of the y axis 
#' 
#' @return A ggplot boxplot 
#'
#' @export
#' 
#' @examples
#' create_boxplot(garment_data, day, actual_productivity, "Actual Productivity by Day of the Week", "Weekend/Weekday", "Actual Productivity")

create_boxplot <- function(data, x_var, y_var, title, x_title, y_title) {
  if (!is.data.frame(data)) {
    stop("data must be a data frame. Please try again.")
  }
  
  if (!is.numeric(y_var)) {
    stop("y_var must be numerical. Please try again.")
  }
  
  new_boxplot <- data %>%
    ggplot2::ggplot(
    ggplot2::aes(x = x_var, y = y_var)) +
    ggplot2::geom_boxplot()+
    ggplot2::labs(title = title, x = x_title, y = y_title)+
    ggplot2::theme(text =  ggplot2::element_text(size = 20),
          plot.title =  ggplot2::element_text(face = "bold"),
          axis.title =  ggplot2::element_text(face = "bold") )
  return(new_boxplot)
}
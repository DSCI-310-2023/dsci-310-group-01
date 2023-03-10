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
  new_boxplot <- data %>%
    ggplot(aes(x = x_var, y = y_var)) +
    geom_boxplot()+
    ggtitle(title)+
    labs(x = x_title) +
    labs(y = y_title)+
    theme(text = element_text(size = 20),
          plot.title = element_text(face = "bold"),
          axis.title = element_text(face = "bold") )
  return(new_boxplot)
}

# Inputs for tests for create_boxplot.R
not_df1 <- 5
not_df2 <- "y"
not_df3 <- list()
not_y1 <- "3"
not_y2 <- data.frame(y = "y")
not_y <- NULL
day = c(25,36)
actual_productivity = c(22, 10)
test_df <- data.frame(day, actual_productivity )
test_x <- day
test_y <- actual_productivity
test_title <- "Actual Productivity vs Day"
xlab <- "Day"
ylab <- "Actual Productivity"

# output for tests for visualize_var
test_output <- test_df |>
  ggplot2::ggplot(
    ggplot2::aes(unquote(test_x), test_y)) +
  ggplot2::geom_boxplot() +
  ggplot2::labs(x = xlab, y = ylab, title = test_title) +
  ggplot2::theme(text = ggplot2::element_text(size = 15))
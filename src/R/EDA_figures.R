#author: Longfei Guan
#date: 2022-03-23

"This scripts runs exploratory data analysis on the given data and outputs graphs and summary table.
The the correlation values between the variables is saved as a png file named 'pair_plots.png'.
The boxplot of the actual productivity by day of the week is saved as a png file named 'day_boxplot.png'.
The boxplot of the actual productivity by half is saved as a png file named 'half_boxplot.png'.
The boxplot of the actual productivity by department is saved as a png file named 'department_boxplot.png'.
The distribution of actual productivity is saved as a png file named 'actual_productivity_distribution.png'.
The QQ plot of actual productivity is saved as a png file named 'actual_productivity_qqplot.png'.
The summary table of actual productivity for different halves and departments is saved as a png file named 'summary_table_1.png'.

Usage: src/R/forward_selection.R <data> <out_dir>
" -> doc

suppressPackageStartupMessages({
  library(tidyverse)
  library(broom)
  library(GGally)
  library(leaps)
  library(glmnet)
  library(docopt)
})

opt <- docopt(doc)

data.filtered <- doc$data

options(repr.plot.width = 15, repr.plot.height = 10)

pair_plots <-ggpairs(data.filtered) +
  theme(
    text = element_text(size = 15),
    plot.title = element_text(face = "bold"),
    axis.title = element_text(face = "bold")
  )

data.filtered <- clean_data(data.filtered, "no_of_workers")

options(repr.plot.width = 10, repr.plot.height = 4)

day_boxplot <- create_boxplot(data.filtered, data.filtered$day,
                              data.filtered$actual_productivity,
                              "Actual Productivity by Day of the Week",
                              "Weekend/Weekday", "Actual Productivity")


half_boxplot <- create_boxplot(data.filtered, data.filtered$half,
                               data.filtered$actual_productivity,
                               "Actual Productivity by Half",
                               "Half", "Actual Productivity")

department_boxplot <- create_boxplot(data.filtered, data.filtered$department,
                                     data.filtered$actual_productivity,
                                     "Actual Productivity of Departments",
                                     "Department", "Actual Productivity")


options(repr.plot.width = 10, repr.plot.height = 5)

actual_productivity_distribution <- data.filtered %>%
  ggplot(aes(x = actual_productivity)) +
  geom_histogram(bins = 20) +
  ggtitle("Distribution of Actual Productivity")+
  labs(x = "Actual Productivity") +
  labs(y = "Frequency")+ theme(
    text = element_text(size = 20),
    plot.title = element_text(face = "bold"),
    axis.title = element_text(face = "bold") )

qqnorm(data.filtered$actual_productivity)
qqline(data.filtered$actual_productivity)
actual_productivity_qqplot <- recordPlot()

summary_table_1 <- data.filtered %>%
  group_by(half, department) %>%
  summarise(count = n(),
            mean = mean(actual_productivity),
            median = median(actual_productivity),
            min = min(actual_productivity),
            max = max(actual_productivity),
            sd = sd(actual_productivity),
            .groups = 'keep'
  )

ggsave(paste0(opt$out_dir, "/pair_plots.png"),
       pair_plots)
ggsave(paste0(opt$out_dir, "/day_boxplot.png"),
       day_boxplot)
ggsave(paste0(opt$out_dir, "/half_boxplot.png"),
       half_boxplot)
ggsave(paste0(opt$out_dir, "/department_boxplot.png"),
       department_boxplot)
ggsave(paste0(opt$out_dir, "/actual_productivity_distribution.png"),
       actual_productivity_distribution)
ggsave(paste0(opt$out_dir, "/actual_productivity_qqplot.png"),
       actual_productivity_qqplot)
ggsave(paste0(opt$out_dir, "/summary_table_1.png"),
       summary_table_1)

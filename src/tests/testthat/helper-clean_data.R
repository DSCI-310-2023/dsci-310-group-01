department <- c("sewing" , "finishing", "sewing", "finishing")
team <- c("8", "1", '11', '11')
no_of_workers	<- c(1:4)

test_data <- data.frame(department, team, no_of_workers)
test_data_two_columns <- data.frame(department, no_of_workers)
test_data_one_column <- data.frame(department)
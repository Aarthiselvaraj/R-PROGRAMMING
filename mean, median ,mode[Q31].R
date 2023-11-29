
values <- c(90, 50, 70, 80, 70, 60, 20, 30, 80, 90, 20)


mean_value <- mean(values)
cat("Mean:", mean_value, "\n")


median_value <- median(values)
cat("Median:", median_value, "\n")


mode_value <- as.numeric(names(sort(table(values), decreasing = TRUE)[1]))
cat("Mode:", mode_value, "\n")

second_highest <- sort(unique(values), decreasing = TRUE)[2]
cat("2nd Highest Value:", second_highest, "\n")


third_lowest <- sort(unique(values))[3]
cat("3rd Lowest Value:", third_lowest, "\n")

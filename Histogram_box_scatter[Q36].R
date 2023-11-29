# Install and load necessary packages if not already installed
if (!requireNamespace("ggplot2", quietly = TRUE)) {
  install.packages("ggplot2")
}

# Load libraries
library(ggplot2)

# Create a sample dataframe (replace this with your actual data)
set.seed(123)  # for reproducibility
df <- data.frame(
  Diet = rep(c("Diet-1", "Diet-2", "Diet-3"), each = 50),
  weight = c(rnorm(50, mean = 70, sd = 5), rnorm(50, mean = 75, sd = 6), rnorm(50, mean = 80, sd = 7)),
  Time = runif(150, min = 1, max = 10)
)
histogram <- ggplot(subset(df, Diet == "Diet-1"), aes(x = weight)) +
  geom_histogram(binwidth = 5, fill = "blue", color = "black", alpha = 0.7) +
  labs(title = "Histogram of Weight for Diet-1", x = "Weight", y = "Frequency")
print(histogram)


# a. Create a Box plot for “weight” grouped by “Diet”
boxplot <- ggplot(df, aes(x = Diet, y = weight)) +
  geom_boxplot() +
  labs(title = "Box plot of Weight Grouped by Diet", x = "Diet", y = "Weight")

# b. Create a Histogram for “weight” features belong to Diet-1 category
histogram <- ggplot(subset(df, Diet == "Diet-1"), aes(x = weight)) +
  geom_histogram(binwidth = 5, fill = "blue", color = "black", alpha = 0.7) +
  labs(title = "Histogram of Weight for Diet-1", x = "Weight", y = "Frequency")

# c. Create Scatter plot for “weight” vs “Time” grouped by Diet
scatterplot <- ggplot(df, aes(x = weight, y = Time, color = Diet)) +
  geom_point() +
  labs(title = "Scatter plot of Weight vs Time Grouped by Diet", x = "Weight", y = "Time", color = "Diet")

# Display the plots
print(boxplot)
print(histogram)
print(scatterplot)

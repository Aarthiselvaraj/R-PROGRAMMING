# Load required libraries
library(reshape2)

# Load the airquality dataset
data(airquality)

# (i) Summary statistics of the airquality dataset
summary(airquality)

# (ii) Melt the airquality dataset and display it in long-format
melted_data <- melt(airquality)
cat("\n(ii) Melted Data (Long Format):\n")
print(melted_data)

# (iii) Melt the airquality dataset and specify month and day as "ID variables"
melted_data_id <- melt(airquality, id.vars = c("Month", "Day"))
cat("\n(iii) Melted Data with Month and Day as ID Variables:\n")
print(melted_data_id)

# (iv) Cast the molten airquality dataset with respect to month and date features
casted_data <- dcast(melted_data_id, Month + Day ~ variable)
cat("\n(iv) Casted Data:\n")
print(casted_data)

# (v) Use the cast function appropriately and compute the average of Ozone, Solar.R, Wind, and temperature per month
average_per_month <- dcast(melted_data_id, Month ~ variable, fun.aggregate = mean)
cat("\n(v) Average per Month:\n")
print(average_per_month)

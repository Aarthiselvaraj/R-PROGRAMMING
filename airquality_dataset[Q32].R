data(airquality)

mean_temp <- sum(airquality$Temp) / length(airquality$Temp)
cat("Mean Temperature:", mean_temp, "\n")


first_five_rows <- airquality[1:5, ]
print("First five rows:")
print(first_five_rows)


selected_columns <- airquality[, !(names(airquality) %in% c("Temp", "Wind"))]
print("Selected columns:")
print(selected_columns)

# (iv) Identify the coldest day
coldest_day <- airquality[which.min(airquality$Temp), "Day"]
cat("Coldest Day:", coldest_day, "\n")

# (v) Count days with wind speed greater than 17 mph
wind_gt_17_days <- sum(airquality$Wind > 17)
cat("Number of Days with Wind Speed > 17 mph:", wind_gt_17_days, "\n")


library(reshape2)
data(airquality)
threshold <- 0.1

for (col in names(airquality)) {
  missing_percent <- sum(is.na(airquality[, col])) / length(airquality[, col])
  
  if (missing_percent < threshold) {
    
    airquality <- airquality[complete.cases(airquality[, col]), ]
  } else {
    
    airquality[, col][is.na(airquality[, col])] <- mean(airquality[, col], na.rm = TRUE)
  }
}

model <- lm(Ozone ~ Solar.R, data = airquality)


plot(airquality$Solar.R, airquality$Ozone, main = "Scatter Plot between Ozone and Solar.R", 
     xlab = "Solar.R", ylab = "Ozone", pch = 16, col = "blue")
abline(model, col = "red")

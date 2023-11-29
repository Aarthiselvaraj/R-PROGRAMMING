library(dplyr)
library(tidyr)

# Load the ChickWeight dataset if not already loaded
data("ChickWeight")




ordered_data <- ChickWeight[order(ChickWeight$weight), ]
last_six_records <- tail(ordered_data)
print(last_six_records)

# (ii.a) Melting the data based on "Chick", "Time", and "Diet" as ID variables
melted_data <- ChickWeight %>% pivot_longer(cols = starts_with("weight"), names_to = "Time of Diet", values_to = "Weight")
print(melted_data)

# (ii.b) Casting to display the mean value of weight grouped by Diet
mean_weight_by_diet <- melted_data %>% 
  group_by(Diet, Time) %>%
  summarise(mean_weight = mean(Weight)) %>%
  pivot_wider(names_from = Time, values_from = mean_weight)
print(mean_weight_by_diet)

# (ii.c) Casting to display the mode of weight grouped by Diet
mode_weight_by_diet <- melted_data %>%
  group_by(Diet, Time) %>%
  summarise(mode_weight = as.numeric(names(table(Weight)[which.max(table(Weight))]))) %>%
  pivot_wider(names_from = Time, values_from = mode_weight)
print(mode_weight_by_diet)
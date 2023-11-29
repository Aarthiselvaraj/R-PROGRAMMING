
get_unique_elements <- function(input_string) unique(strsplit(input_string, NULL)[[1]])
get_unique_numbers <- function(input_vector) unique(input_vector)


cat("Unique elements of the string:", get_unique_elements(readline(prompt = "Enter a string: ")), "\n")

cat("Unique numbers of the vector:", get_unique_numbers(as.numeric(strsplit(readline(prompt = "Enter a vector of numbers (comma-separated): "), ",")[[1]])), "\n")

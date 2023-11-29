# Create vectors, matrices, and a function
vector1 <- c(1, 2, 3)
vector2 <- c("a", "b", "c")
matrix1 <- matrix(1:6, nrow = 2, ncol = 3)
matrix2 <- matrix(7:12, nrow = 2, ncol = 3)
custom_function <- function(x) { return(x^2) }

# Create a list with the elements
my_list <- list(
  numeric_vector = vector1,
  character_vector = vector2,
  numeric_matrix = matrix1,
  another_numeric_matrix = matrix2,
  my_function = custom_function
)

# Print the content of the list
print(my_list)

# Given vectors
vector1 <- 1:9
vector2 <- 10:18

# Create a three-dimensional array with two 3x3 matrices
my_array <- array(c(vector1, vector2), dim = c(3, 3, 2))

# Print the second row of the second matrix
second_matrix_second_row <- my_array[2, , 2]
cat("Second row of the second matrix:\n", second_matrix_second_row, "\n")

# Print the element in the 3rd row and 3rd column of the 1st matrix
element_3rd_row_3rd_col <- my_array[3, 3, 1]
cat("Element in the 3rd row and 3rd column of the 1st matrix:", element_3rd_row_3rd_col, "\n")

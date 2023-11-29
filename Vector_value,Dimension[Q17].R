# Vector of values
values <- 1:24

# Vector of dimensions
dims <- c(3, 4, 2)

# Provide names for each dimension
dimnames_list <- list(
  c("Dim1_1", "Dim1_2", "Dim1_3"),
  c("Dim2_A", "Dim2_B", "Dim2_C", "Dim2_D"),
  c("Dim3_X", "Dim3_Y")
)

# Create the array
my_array <- array(values, dim = dims, dimnames = dimnames_list)

# Display the array
print(my_array)

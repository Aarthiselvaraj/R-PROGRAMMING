# Create a 5 x 4 matrix with labels and fill by rows
matrix_5x4_rows <- matrix(1:20, nrow = 5, ncol = 4, byrow = TRUE,
                          dimnames = list(c("Row1", "Row2", "Row3", "Row4", "Row5"),
                                          c("Col1", "Col2", "Col3", "Col4")))

# Create a 3 x 3 matrix with labels and fill by rows
matrix_3x3_rows <- matrix(21:29, nrow = 3, ncol = 3, byrow = TRUE,
                          dimnames = list(c("RowA", "RowB", "RowC"),
                                          c("ColA", "ColB", "ColC")))

# Create a 2 x 2 matrix with labels and fill by columns
matrix_2x2_cols <- matrix(31:34, nrow = 2, ncol = 2, byrow = FALSE,
                          dimnames = list(c("RowX", "RowY"),
                                          c("ColX", "ColY")))

# Display the matrices
cat("5 x 4 Matrix (Fill by Rows):\n", matrix_5x4_rows, "\n\n")
cat("3 x 3 Matrix (Fill by Rows):\n", matrix_3x3_rows, "\n\n")
cat("2 x 2 Matrix (Fill by Columns):\n", matrix_2x2_cols, "\n")

fibonacci <- function(n) {
  if (n <= 1) {
    return(n)
  } 
  else {
    return(fibonacci(n - 1) + fibonacci(n - 2))
  }
}

# Printing the Fibonacci sequence up to the 10th element
for (i in 1:10) {
  cat(fibonacci(i), " ")
}
fizz_buzz <- function(n) {
  if (n %% 3 == 0 && n %% 5 == 0) {
    return("FizzBuzz")
  } else if (n %% 3 == 0) {
    return("Fizz")
  } else if (n %% 5 == 0) {
    return("Buzz")
  } else {
    return(as.character(n))
  }
}
for (i in 1:100) {
  cat(fizz_buzz(i), "\n")
}
sieve_of_eratosthenes <- function(n) {
  primes <- rep(TRUE, n)
  primes[1] <- FALSE
  
  for (i in 2:sqrt(n)) {
    if (primes[i]) {
      primes[i * i:n] <- FALSE
    }
  }
  
  return(which(primes))
}

# Getting all prime numbers up to a given number (e.g., 100)
prime_numbers <- sieve_of_eratosthenes(90)

# Displaying the prime numbers
print(prime_numbers)
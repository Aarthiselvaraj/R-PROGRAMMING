find_factors <- function(number) (1:number)[number %% (1:number) == 0]

number <- as.numeric(readline(prompt = "Enter a number: "))
result <- find_factors(number)

cat("Factors of", number, "are:", result, "\n")

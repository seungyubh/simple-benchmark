# Load necessary libraries
library(microbenchmark)


# Define the test function
test_function_matrix_mul <- function() {
  set.seed(42)
  a <- matrix(runif(10000), nrow = 100, ncol = 100)
  b <- matrix(runif(10000), nrow = 100, ncol = 100)
  a %*% b
}

test_function_iterative <- function(n=10^6) {
  sum_of_squares <- 0
  for (i in 1:n) {
    sum_of_squares <- sum_of_squares + i^2
  }
}

test_function_lm <- function() {
  set.seed(42)
  n <- 10000
  p <- 100
  X <- matrix(rnorm(n*p), n, p)
  y <- X %*% rnorm(p) + rnorm(100)
  lm(y ~ X + 0)
}

test_function <- function() {
  test_function_matrix_mul()
  test_function_iterative()
  test_function_lm()
}

benchmark_results <- microbenchmark(test_function(), times = 100, unit = "ms")
print(summary(benchmark_results))

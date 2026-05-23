modular_arithmetic_for_function <- function(f1, m){
  n <- length(f1)
  i <- 1
  poly <- c()
  while (i <=length(f1)) {
    f1[i] = f1[i] %% m
    current <- paste0(f1[i], "*x^", n-1)
    poly <- c(poly,current)
    n = n-1
    i = i+1
  }
  paste(poly, collapse = "+")
}

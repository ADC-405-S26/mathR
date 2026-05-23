#' Applying modular arithmetic to polynomials with coefficients in the real number
#'
#' @param f1 A numeric vector of the coefficients of terms in the polynomial (in an order from the leading to the constant coefficient)
#' @param m A numeric value that the polynomial will be mod out by (modulo base)
#'
#' @returns A string of the polynomial modulo m
#' @export
#'
#' @examples
#'
#'modular_arithmetic_for_function(c(1,3,4),4)
#'modular_arithmetic_for_function(c(1,3,1,7,5),3)
modular_arithmetic_for_function <- function(f1, m){

  checkmate::assert_numeric(f1)
  checkmate::assert_number(m)

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

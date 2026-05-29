#' Apply modular arithmetic to polynomials
#'
#' Apply modular arithmetic to the coefficients of a real polynomial and return the
#' resulting polynomial expression modulo \eqn{m}. This concept is heavily used in abstract algebra to reduce the
#' algebraic structures like rings and fields, and also in cryptography to restrict
#' polynomials to a finite field, allowing computers to process math without the coefficients growing
#' infinitely large.
#'
#' @param f1 A numeric vector of the coefficients of terms in the polynomial (in an order from the leading to the constant coefficient)
#' @param m A nonzero numeric value that the polynomial will be mod out by (modulo base)
#'
#' @returns A character string representing the polynomial with coefficients reduced modulo \eqn{m}.
#'
#' @details
#' Given a polynomial
#'
#' \deqn{
#' f(x) = a_nx^n + a_{n-1}x^{n-1} + \dots + a_1x + a_0,
#' }
#'
#' the function replaces each coefficient \eqn{a_i} with
#' \eqn{a_i \bmod m}.
#'
#' @export
#'
#' @examples
#'
#'modular_arithmetic_for_function(c(1,3,4),4)
#'modular_arithmetic_for_function(c(1,3,1,7,5),3)
modular_arithmetic_for_function <- function(f1, m){

  checkmate::assert_numeric(f1, any.missing = FALSE)
  checkmate::assert_number(m, na.ok = FALSE)

  if (m==0){
    stop("Assertion on 'm' failed: Modulus cannot be zero.")
  }

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
  paste(poly, collapse = " + ")
}

#' Find roots of polynomials of degree at most 2
#'
#' Compute the real roots of a polynomial of the form
#' \eqn{ax^2 + bx + c} using the quadratic formula.
#' \eqn{k} is considered a root of \eqn{f(x)} if \eqn{f(k)=0}.
#' In mathematics, this is useful for polynomial factorization. In other settings,
#' one could be interested in learning when the performance of a graph with this specific formula
#' crosses 0.
#'
#'
#'
#' @param a A numeric value for the coefficient of \eqn{x^2}
#' @param b A numeric value for the coefficient of \eqn{x}
#' @param c A numeric value for the constant coefficient
#'
#' @returns A numeric value of the roots
#'
#' * If the polynomial has a repeated root, a single numeric value is returned.
#' * If \eqn{a = 0}, the polynomial is linear (\eqn{f(x) = bx + c}) and the linear root is returned.
#' * If the polynomial has no real roots or is invalid, `NA` is returned.
#'
#' @details
#' For polynomials with degree 2, the discriminant \eqn{b^2 - 4ac} determines the number of real roots:
#'
#' * positive discriminant: two distinct real roots
#' * zero discriminant: one repeated real root
#' * negative discriminant: no real roots
#'
#' @export
#'
#' @examples
#'
#'root_finding(1,0,-9)
#'root_finding(4,4,1)
#'root_finding(0,0,5)
#'root_finding(25,100,1)
root_finding <- function(a,b,c){

  checkmate::assert_number(a, na.ok = FALSE)
  checkmate::assert_number(b, na.ok = FALSE)
  checkmate::assert_number(c, na.ok = FALSE)

  if ((b^2-4*a*c <0) || (a==0 && b==0 && c!=0)){
    paste("Invalid function or the input function is irreducible and does not have a root.")
    NA_real_
  } else if (a ==0){
    -c/b
  } else {
    root1 <- (-b+ sqrt(b^2-4*a*c))/(2*a)
    root2 <- (-b- sqrt(b^2-4*a*c))/(2*a)
    if (root1 != root2){
      c(root1, root2)
    } else {
      root1
    }
  }
}


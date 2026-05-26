#' Finding the roots of degree 1 and 2 polynomials with real number coefficients and 1 variable
#'
#' @param a A numeric value for the coefficient of x^2
#' @param b A numeric value for the coefficient of x
#' @param c A numeric value for the constant coefficient
#'
#' @returns A numeric value of the roots or a message if the polynomial is invalid or irreducible
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


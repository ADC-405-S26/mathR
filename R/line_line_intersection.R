#' Finding the intersections between 2 polynomials (coefficient in the real nummber) up to degree 3 and plotting the intersections with the functions
#'
#' @param a1 A numeric value for the coefficient of x^3 for function 1
#' @param a2 A numeric value for the coefficient of x^2 for function 1
#' @param a3 A numeric value for the coefficient of x for function 1
#' @param a4 A numeric value for the constant coefficient for function 1
#' @param b1 A numeric value for the coefficient of x^3 for function 2
#' @param b2 A numeric value for the coefficient of x^2 for function 2
#' @param b3 A numeric value for the coefficient of x for function 2
#' @param b4 A numeric value for the constant coefficient for function 2
#' @param interval A numeric vector for the interested interval in x
#'
#' @returns A plot of the functions within the chosen x-interval and the intersecting points within that range
#' @importFrom rootSolve uniroot.all
#' @importFrom ggplot2 ggplot geom_function geom_point geom_text aes theme element_text labs
#' @export
#'
#' @examples
#'
#'line_line_intersection(0,1,0,0,0,0,1,0,3)
#'line_line_intersection(0,0,5,0,0,0,5,0,3)
#'line_line_intersection(1,1,1,0,0,0,1,0,2)
line_line_intersection <- function(a1,a2,a3,a4,b1,b2,b3,b4,interval){

  checkmate::assert_number(a1)
  checkmate::assert_number(a2)
  checkmate::assert_number(a3)
  checkmate::assert_number(a4)
  checkmate::assert_number(b1)
  checkmate::assert_number(b2)
  checkmate::assert_number(b3)
  checkmate::assert_number(b4)
  checkmate::assert_number(interval, lower = 0.5)

  f1 <- function(x) a1*x^3+a2*x^2+a3*x+a4
  f2 <- function(x) b1*x^3+b2*x^2+b3*x+b4
  root <-rootSolve::uniroot.all(function(x) f2(x)-f1(x),c(-interval,interval))

  root_x <-root
  root_y <- a1*root^3+a2*root^2+a3*root+a4

  ggplot2::ggplot()+
  ggplot2::geom_function(fun = f1, color = 'blue',xlim=c(-interval,interval))+
  ggplot2::geom_function(fun = f2, color = 'red',xlim=c(-interval,interval))+
  ggplot2::geom_point(ggplot2::aes(x=root_x, y=root_y))+
  ggplot2::geom_text(ggplot2::aes(x=root_x, y=root_y,
                     label = paste("(",round(root_x,2),",",round(root_y,2),")")),
                     nudge_x = interval/10,nudge_y = 3*interval/10)+
  ggplot2::theme(
      plot.title = ggplot2::element_text(face = "bold", hjust = 0.5))+
  ggplot2::labs(
      title = "Intersection between 2 Functions within a Chosen Interval",
      x = "x",
      y = "y"
    )
}

#' Plot intersections between two polynomial functions
#'
#' Compute and plot the intersections between 2 polynomials (coefficient in the real number)
#' up to degree 3 over a specified interval.
#'
#'
#' @param a1 A numeric value for the coefficient of \eqn{x^3} for function 1
#' @param a2 A numeric value for the coefficient of \eqn{x^2} for function 1
#' @param a3 A numeric value for the coefficient of \eqn{x} for function 1
#' @param a4 A numeric value for the constant coefficient for function 1
#' @param b1 A numeric value for the coefficient of \eqn{x^3} for function 2
#' @param b2 A numeric value for the coefficient of \eqn{x^2} for function 2
#' @param b3 A numeric value for the coefficient of \eqn{x} for function 2
#' @param b4 A numeric value for the constant coefficient for function 2
#' @param interval A numeric vector for the interested interval in \eqn{x}
#'
#' @returns A `ggplot2` object displaying the two functions within the chosen
#'  \eqn{x}-interval and the coordinates of intersecting points within that range.
#'
#' @details
#' The first polynomial is defined as
#'
#' \deqn{
#' f_1(x) = a_1x^3 + a_2x^2 + a_3x + a_4
#' }
#'
#' and the second polynomial is defined as
#'
#' \deqn{
#' f_2(x) = b_1x^3 + b_2x^2 + b_3x + b_4.
#' }
#'
#' To find the intersections, the function uses the package rootSolve
#' to numerically determine the roots of \eqn{f_1(x)-f_2(x)}. In other words, this operation
#' finds data points at which \eqn{f_1(x)=f_2(x)}.
#'
#' @importFrom rootSolve uniroot.all
#' @importFrom ggplot2 ggplot geom_function geom_point geom_text aes theme element_text labs
#' @importFrom rlang .data
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

  #root_x <-root
  #root_y <- a1*root^3+a2*root^2+a3*root+a4

  intersection <- data.frame(root_x = root, root_y = f1(root))


  ggplot2::ggplot()+
    ggplot2::geom_function(fun = f1, color = 'blue',xlim=c(-interval,interval))+
    ggplot2::geom_function(fun = f2, color = 'red',xlim=c(-interval,interval))+
    ggplot2::geom_point(data = intersection, ggplot2::aes(x=.data$root_x, y=.data$root_y))+
    ggplot2::geom_text(data = intersection, ggplot2::aes(x=.data$root_x, y=.data$root_y,
                                    label = paste("(",round(.data$root_x,2),",",round(.data$root_y,2),")")),
                       nudge_x = interval/10,nudge_y = 3*interval/10)+
    ggplot2::theme(
      plot.title = ggplot2::element_text(face = "bold", hjust = 0.5))+
    ggplot2::labs(
      title = "Intersection between 2 Functions within a Chosen Interval",
      x = "x",
      y = "y"
    )
}

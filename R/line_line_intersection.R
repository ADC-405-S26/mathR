line_line_intersection <- function(a1,a2,a3,a4,b1,b2,b3,b4,interval){
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

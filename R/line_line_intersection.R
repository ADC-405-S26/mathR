line_line_intersection <- function(a1,a2,a3,a4,b1,b2,b3,b4){
  f1 <- function(x) a1*x^3+a2*x^2+a3*x+a4
  f2 <- function(x) b1*x^3+b2*x^2+b3*x+b4
  root <-uniroot(function(x) f2(x)-f1(x),c(0,10))
  ggplot2::ggplot()+
  ggplot2::geom_function(fun = function(x) f1(x), color = 'blue')+
  ggplot2::geom_function(fun = function(x) f2(x), color = 'red')+
  ggplot2::theme(
      plot.title = ggplot2::element_text(face = "bold", hjust = 0.5)
    )
  print(root)
}

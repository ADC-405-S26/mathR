root_finding <- function(a,b,c){
  print(sprintf("The input function is  %.2f x^2 +%.2f x +%.2f", a, b, c))
  if (b^2-4*a*c <0){
    print("The input function is irreducible and does not have a root.")
  } else if (a ==0){
    sprintf("The root of the input function is  x = %.2f.", -c/b)
  } else {
    root1 <- (-b+ sqrt(b^2-4*a*c))/(2*a)
    root2 <- (-b- sqrt(b^2-4*a*c))/(2*a)
    if (root1 != root2){
      sprintf("The roots of the input function is  x = %.2f and x = %.2f.", root1,root2)
    }
    else {
      sprintf("The roots of the input function is  x = %.2f.", root1)
    }

  }
}

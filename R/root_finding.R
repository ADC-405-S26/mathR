root_finding <- function(a,b,c){
  if ((b^2-4*a*c <0) || (a==0 && b==0 && c!=0)){
    stop(paste("Invalid function or the input function is irreducible and does not have a root."))
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


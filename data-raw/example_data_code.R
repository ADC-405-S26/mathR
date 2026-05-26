## code to prepare `example_data_code` dataset goes here

example_data <- data.frame(
  subject_id = 1:9,
  modular = c(2,3,5,6,7,8,9,10,25),
  maxdeg2_func = I(list(
    c(1,2,1),
    c(0,2,9),
    c(1,0,-9),
    c(1,-6,5),
    c(25,100,1),
    c(1,-1,-1),
    c(2,0,-5),
    c(0,1,0),
    c(5,2,1/5)
  )),
  param_graph = c(0, 1, 0, 0, 0, 0, 1, 0, 2),
  rand_func = I(list(
    c(1,2,3,4),
    c(0,2,9,5,7,8),
    c(1,0,-9,-3),
    c(1,-6,5),
    c(25,100,1,6),
    c(1,-1,-1,2),
    c(2,0,-5),
    c(0,1,0,4, 8, 6),
    c(5,2,1/5)
  ))
)

usethis::use_data(example_data_code, overwrite = TRUE)
usethis::use_r("example_data")

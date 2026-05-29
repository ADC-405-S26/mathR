## code to prepare `example_data_code` dataset goes here

example_data <- tibble(
  subject_id  = 1:9,
  param_graph = c(0, 1, 0, 0, 0, 0, 1, 0, 2),
  modular     = c(1, 2, 3, 4, 5, 6, 7, 8, 9),
  rand_func   = list(
    c(1, 2, 3, 4),
    c(0, 2, 9, 5, 7, 8),
    c(1, 0, -9, -3),
    c(1, -6, 5),
    c(25, 100, 1, 6),
    c(1, -1, -1, 2),
    c(2, 0, -5),
    c(0, 1, 0, 4, 8, 6),
    c(5, 2, 0.2)
  ),

  maxdeg2_func = list(
    c(1, 2, 1),
    c(0, 2, 9),
    c(1, 0, -9),
    c(1, -6, 5),
    c(25, 100, 1),
    c(1, -1, -1),
    c(2, 0, -5),
    c(0, 1, 0),
    c(5, 2, 0.2)
  )
)

usethis::use_data(example_data, overwrite = TRUE)

test_that("line_line_intersection returns a ggplot with correct roots within the input interval", {
  # Call the function
  p <- line_line_intersection(0,1,0,0,0,0,1,0,2)

  # Record the intersections between the 2 input functions
  intersection_points <- p$layers[[3]]$data

  # Check it generates ggplot object
  expect_s3_class(p, "ggplot")

  # Check for the 2 roots (0,0) and (1,1)
  expect_equal(intersection_points$root_x, c(0, 1))
  expect_equal(intersection_points$root_y, c(0, 1))
})


test_that("line_line_intersection applies custom element modifications correctly", {
  p <- line_line_intersection(0,1,0,0,0,0,1,0,2)

  # Check the plot title modifications
  expect_equal(p$theme$plot.title$face, "bold")
  expect_equal(p$theme$plot.title$hjust, 0.5)

})


test_that("line_line_intersection assertions catch invalid inputs", {
  # Characters
  expect_error(line_line_intersection(0,1,0,0,0,0,1,"0",2), "Assertion on 'b4' failed")

  # Vectors (length > 1)
  expect_error(line_line_intersection(0,1,0,0,c(2,3),0,1,2,2), "Assertion on 'b1' failed")

  # Negative interval
  expect_error(line_line_intersection(0,1,0,0,0,0,1,0,-2), "Assertion on 'interval' failed")


})

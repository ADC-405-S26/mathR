test_that("modular_arithmetic_for_function returns modular of the function correctly", {
  # simple example
  expect_equal(modular_arithmetic_for_function(c(1,3,4),4), "1*x^2 + 3*x^1 + 0*x^0")

  # m is negative
  expect_equal(modular_arithmetic_for_function(c(4,5,2,6,8),-5), "-1*x^4 + 0*x^3 + -3*x^2 + -4*x^1 + -2*x^0")

})


test_that("modular_arithmetic_for_function assertions catch invalid f1, m inputs", {
  # m =0
  expect_error(modular_arithmetic_for_function(c(1,3,4),0), "Assertion on 'm' failed")

  # m is not a number
  expect_error(modular_arithmetic_for_function(c(1,3,4),c(1,2)), "Assertion on 'm' failed")
  expect_error(modular_arithmetic_for_function(c(1,3,4),"meow"), "Assertion on 'm' failed")

  # f1 is not a number vector
  expect_error(modular_arithmetic_for_function("hello",2), "Assertion on 'f1' failed")

  # f1 has missing value
  expect_error(modular_arithmetic_for_function(c(1, NA, 5), 2), "Assertion on 'f1' failed")


})

test_that("root_finding finds roots correctly", {
  # Find roots of a degree 2 function with only 1 root
  expect_equal(root_finding(1,2,1), -1)

  # Find roots of a degree 2 function with 2 different roots
  expect_equal(root_finding(1,0,-9), c(3,-3))

  # Find roots of a degree 1 function (only 1 root)
  expect_equal(root_finding(0,5,4), -4/5)

})

test_that("root_finding assertions catch invalid a,b,c inputs", {
  # a,b, or c is not a number
  expect_error(root_finding("a",2,1), "Assertion on 'a' failed")
  expect_error(root_finding(3,"hello",1), "Assertion on 'b' failed")
  expect_error(root_finding(10,2,"meowmeow"), "Assertion on 'c' failed")

  # a, b, or c is a number vector and not a number
  expect_error(root_finding(c(2,3),2,1), "Assertion on 'a' failed")
  expect_error(root_finding(3,c(2,3,10),1), "Assertion on 'b' failed")
  expect_error(root_finding(5,6,c(2,3)), "Assertion on 'c' failed")

  # if the user enter sqrt(-5), which is not a real number
  expect_error(root_finding(3,NaN,1), "Assertion on 'b' failed")

})



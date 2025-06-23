test_that("animal_sounds produces expected strings", {
  dog_woof <- animal_sounds("World", "hello")
  expect_equal(dog_woof, "The World says hello!")
  expect_equal(animal_sounds("cat", "miaow"), "The cat says miaow!")
})

test_that("handles invalid inputs", {
  expect_error(animal_sounds("World", c("Hello", "again")),
               class = "error_not_single_string")
  expect_error(animal_sounds("World", as.factor("Hello")),
               class = "error_not_single_string")
})

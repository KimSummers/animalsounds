test_that("animal_sounds produces expected strings", {
  dog_woof <- animal_sounds("World", "hello")
  expect_equal(dog_woof, "The World says hello!")
  expect_equal(animal_sounds("cat", "miaow"), "The cat says miaow!")
  giraffe <- animal_sounds("giraffe")
  expect_equal(giraffe,
               "The giraffe makes no sound.")})

test_that("handles invalid inputs", {
  expect_error(animal_sounds("World", c("Hello", "again")),
               class = "error_not_single_string")
  expect_error(animal_sounds("cat", as.factor("miaow")),
               class = "error_not_single_string")
})

test_that("error message for invalid input", {
  expect_snapshot(animal_sounds("World", c("Hello", "again")),
                  error = TRUE)
})


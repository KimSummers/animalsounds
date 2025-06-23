#' What sounds the animal makes
#'
#' Prints out what sound the animal makes
#'
#' Uses function [paste0()] no it is **NOT** do anything _useful_
#'
#' @param animal string
#' @param sound string
#'
#' @return A string stating what sound the animal makes
#' @export
#'
#' @examples animal_sounds("World", "hello")
animal_sounds <- function(animal, sound) {

  if (!rlang::is_character(animal, n = 1)) {
    cli_abort(
      c("{.var animal} must be a single string!",
        "i" = "It was {.type {animal}} of length {length(animal)} instead.",
        "i" = "You typed {animal}."),
      class = "error_not_single_string"
      )
  }

  if (!rlang::is_character(sound, n = 1)) {
    cli_abort(
      c("{.var sound} must be a {.cls character} vector of length one!",
        "i" = "It was {.type {sound}} of length {length(sound)} instead.",
        "i" = "You typed {sound}."),
      class = "error_not_single_string"
    )
  }

  paste0("The ", animal, " says ", sound, "!")
}

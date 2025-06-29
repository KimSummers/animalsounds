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
animal_sounds <- function(animal, sound = NULL) {

  if (!rlang::is_character(animal, n = 1)) {
    cli_abort(
      c("{.var animal} must be a {.cls character} vector of length one!",
        "i" = "It was {.type {animal}} of length {length(animal)} instead.",
        "i" = "You typed {animal}."),
      class = "error_not_single_string"
    )

  }

  if (is.null(sound))
  {
    return(paste0("The ", animal, " makes no sound."))
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

check_arg <- function(arg, n = 1){

  if (!rlang::is_character(arg, n = n)){
    cli_abort(
      c("{.var {rlang::caller_arg(arg)}} must be a single string!",
      "i" = "It was {.type {arg}} of length {length(animal)} instead.",
      "i" = "You typed {arg}."),
      call = rlang::caller_env(),
      class = "error_not_single_string"
    )
    }

}


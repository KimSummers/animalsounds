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
  stopifnot(is.character(animal) & length(animal) == 1)
  stopifnot(is.character(sound) & length(sound) == 1)
  paste0("The ", animal, " says ", sound, "!")
}

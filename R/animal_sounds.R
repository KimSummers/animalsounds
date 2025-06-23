#' What sounds the animal makes
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

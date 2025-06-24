## code to prepare `farm_animals` dataset goes here

animals <- c("Sheep", "Goat", "Duck", "Chicken", "Goose", "Cow", "Horse")
sounds <- c("Baaaa", "Bleat", "Quack", "Cluck", "Gobble", "Mooo", "Neigh")

farm_animals <- data.frame(animals, sounds)

usethis::use_data(farm_animals, overwrite = TRUE)

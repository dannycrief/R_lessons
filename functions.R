# Functions syntax in R
print("Hello, world!")
sqrt(25)
min(1, 6 / 8, 4 / 3)

smallest_number <- min(1, 6 / 8, 4 / 3)
min_is_freater_than_one <- smallest_number > 1
phi <- .5 + sqrt(5) / 2
print(min(1.5, sqrt(3)))

# built-in R language functions

sum <- sum(1, 5)
round <- round(3.1415, 3)
toupper <- toupper("hello, world!")
paste <- paste("hello, ", " world!")
nchar <- nchar("hello, world!")
c <- c(1, 2)
seq <- seq(1, 5)

# Named Arguments
paste("Hello", "world", sep = "+++")
round(3.1415, 3)
round(3.1415, digits = 3)
round(digits = 3, 3.1415)
# ?paste

x <- 2 + 3
x <- "+"(2, 3)


# Loading functions
install.packages("stringr")
.libPaths()
library("stringr")
str_count("Hello, world!")
stringr::str_count("Hello, world!") # python: library.function(parameters)
install.packages("styler")

# Writing functions

make_full_name <- function(first_name, last_name) {
  full_name <- paste(first_name, last_name)
  full_name
}

my_name <- make_full_name("Stepan", "Kozurak")

calculate_rect_area <- function(width, height) {
  return(width*height)
}

print(calculate_rect_area(25,17))

calculate_rect_area <- function(width, height) {
  area <- width*height
}

print(calculate_rect_area(10,17))

calculate_rect_area <- function(width, height) {
  width*height
}

print(calculate_rect_area(10,17))

# Function debug

calculate_bmi <- function(lbs, inches) {
  height_in_meters <- inches*0.0254
  weight_in_kg <- lbs * 0.453592
  bmi <- weight_in_kg / height_in_meters^2
  bmi
}

calculate_bmi(180,70)

# Conditional statements

porrige_temp <- 125

if(porrige_temp > 120) {
  print('Oatmeal is too hot!')
}

too_cold <- porrige_temp < 70

if(too_cold) {
  print("Oatmeal is too cold!")
}


test_food_temp <- function(temp){
  if(temp > 120) {
    status <- "Oatmeal is too hot!"
  } else if(temp < 70) {
    status <- "Oatmeal is too cold!"
  } else {
    status <- "Oatmeal is just right!"
  }
  status
}


test_food_temp(150)
test_food_temp(60)
test_food_temp(119)


add_title <- function(full_name, title) {
  if(startsWith(full_name, title)) {
    return(full_name)
  }
  name_with_title <- paste(title, full_name)
  name_with_title
}

my_name_with_title <- add_title("Stepan", "Mr.")

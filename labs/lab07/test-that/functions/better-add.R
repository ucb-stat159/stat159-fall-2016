
# adds to vectors (numeric or character)
# x vector
# y vector
# returns addition
add <- function(x, y) {
  if (is.character(x) | is.character(y)) {
    add_character(x, y)
  } else{
    add_numeric(x, y)
  }
}


add_numeric <- function(x, y) {
  x + y
}

add_character <- function(x, y) {
  paste(x, y)
}

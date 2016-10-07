#' @title Missing Values
#' @param x a vector
#' @return number of missing values
missing_values <- function(x) {
  sum(is.na(x)) 
}

#' @title Range Value
#' @param x numeric vector
#' @return range as max - min
range_value <- function(x) {
  max(x) - min(x)
}

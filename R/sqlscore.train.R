#' @title Convert an train object into a list of SQL queries
#' @description Runs the correct sqlscore method on x$finalModel
#'
#' @param x A caret object
#' @param ... Arguments passed to the scoring method
#' @export
sqlscore.train <- function(x, ...) {
  sqlscore(x$finalModel, ...)
}

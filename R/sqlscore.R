#' @title Convert an R object into a list of SQL queries
#' @description S3 generic for turning R obkect into SQL text
#'
#' @param x An R object to turn into SQL queries
#' @param ... Arguments passed to the scoring method
#' @export
sqlscore <- function(x, ...) {
  UseMethod('sqlscore')
}

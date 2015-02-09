#' @title Convert a gbm object into a list of SQL queries
#' @description Converts a GBM into a list of SQL queries that, when summed,
#' yield predictions for the model.
#'
#' @param x A gbm object
#' @param n.trees Number of trees at which to score
#' @param total_queries Final number of queries to return. If
#' total_queries< n.trees, SQL queries for sets of trees will be combined into
#' one query.  Defaults to 1 query per tree, which can be very slow but scales
#' well.
#' @param ... Ignored
#' @export
sqlscore.gbm <- function(x, n.trees, total_queries=n.trees, ...) {
  stop('Not implemented')
}

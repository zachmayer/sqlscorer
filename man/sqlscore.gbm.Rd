% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/sqlscore.gbm.R
\name{sqlscore.gbm}
\alias{sqlscore.gbm}
\title{Convert a gbm object into a list of SQL queries}
\usage{
\method{sqlscore}{gbm}(x, n.trees, total_queries = n.trees, ...)
}
\arguments{
\item{x}{A gbm object}

\item{n.trees}{Number of trees at which to score}

\item{total_queries}{Final number of queries to return. If
total_queries< n.trees, SQL queries for sets of trees will be combined into
one query.  Defaults to 1 query per tree, which can be very slow but scales
well.}

\item{...}{Ignored}
}
\description{
Converts a GBM into a list of SQL queries that, when summed,
yield predictions for the model.
}


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

if(FALSE){
  set.seed(42)
  library(gbm)
  dat <- iris
  names(dat) <- gsub('.', '_', names(dat), fixed=TRUE)
  names(dat) <- tolower(names(dat))
  mod <-
    gbm(sepal_length~.,         # formula
        data=dat,                   # dataset
        distribution="gaussian",     # see the help for other choices
        n.trees=1000,                # number of trees
        shrinkage=0.05,              # shrinkage or learning rate,
        interaction.depth=20,         # 1: additive model, 2: two-way interactions, etc.
        bag.fraction = 0.5,          # subsampling fraction, 0.5 is probably best
        train.fraction = 0.5,        # fraction of data for training,
        n.minobsinnode = 5,         # minimum total weight needed in each node
        cv.folds = 3,                # do 3-fold cross-validation
        verbose=FALSE,               # don't print out progress
        n.cores=1)
  best.iter <- gbm.perf(mod, method="cv")
  print(best.iter)

  x <- mod
  n.trees <- 10
  total_queries <- n.trees

  stopifnot(n.trees <= length(x$trees))
  object_trees <- lapply(1:n.trees, function(i) pretty.gbm.tree(x, i))

  split_lookup <- function(tree, leaf) object_trees[leaf, 'SplitCodePred`']

  tree <- object_trees[[1]]
  tree_to_sql <- function(tree){
    var_indexes <- tree$SplitVar + 1
    vars <- x$var.names[var_indexes]
    cases_left <- paste(
      'CASE WHEN',
      vars,
      '<',
      vars[]

      vars[var_indexes] [tree$SplitVar>=0][tree$LeftNode[tree$SplitVar>=0]]
      )

  }


  sql <- pmml(x)





}

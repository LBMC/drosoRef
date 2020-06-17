#' Dme_embryo
#' 
#' Transcriptomic data from *D. melanogaster* embryonic samples.
#' 
#' One time series is included in this dataset.
#'  - \insertCite{graveley2011developmental}{drosoRef}
#' 
#' 
#' The gene expression matrix is \eqn{log(X + 1)} of quantile-normalized expression data.
#' 
#' @docType data
#' 
#' @eval data_format()
#' 
#' @source \href{https://fruitfly.org/sequence/download.html#modencode_expression_scores}{fruitfly.org}
#' 
#' @references
#'    \insertAllCited{}
#' 
#' 
#' @importFrom Rdpack reprompt
"Dme_embryo"
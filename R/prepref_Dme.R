#' Build Interpolated Gene Expression References
#' 
#' Builds the interpolation of the reference datasets.
#' **These functions are internally called by \code{\link[RAPToR]{prepare_refdata}} from RAPToR.**
#' 
#' @param n.inter the resolution of the interpolation, as in \code{seq(start, end, length.out = n.inter)}.
#' 
#' @return A list with \code{interpGE} the interpolated gene expression matrix and 
#' \code{time.series} the time of the interpGE matrix columns.
#' 
#' @seealso \code{\link[RAPToR]{prepare_refdata}} \code{\link[RAPToR]{ge_im}}
#' 
#' @name Dme_prep
NULL

#' @rdname Dme_prep
#' @export
#' @importFrom RAPToR ge_im
#' @importFrom stats predict
#' 
.prepref_Dme_embryo <- function(n.inter){
  # utils::data("Dme_embryo", envir = environment())
  m <- RAPToR::ge_im(
    X = drosoRef::Dme_embryo$g,
    p = drosoRef::Dme_embryo$p,
    formula = drosoRef::Dme_embryo$geim_params$formula,
    method = drosoRef::Dme_embryo$geim_params$method,
    dim_red = drosoRef::Dme_embryo$geim_params$dim_red,
    nc = drosoRef::Dme_embryo$geim_params$nc
  )
  ndat <- data.frame(age = seq(min(drosoRef::Dme_embryo$p$age),
                               max(drosoRef::Dme_embryo$p$age),
                               l = n.inter))
  return(
    list(interpGE = predict(m, ndat), time.series = ndat$age)
  )
}

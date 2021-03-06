% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/prepref_Dme.R
\name{Dme_prep}
\alias{Dme_prep}
\alias{.prepref_Dme_embryo}
\title{Build Interpolated Gene Expression References}
\usage{
.prepref_Dme_embryo(n.inter)
}
\arguments{
\item{n.inter}{the resolution of the interpolation, as in \code{seq(start, end, length.out = n.inter)}.}
}
\value{
A list with \code{interpGE} the interpolated gene expression matrix and
\code{time.series} the time of the interpGE matrix columns.
}
\description{
Builds the interpolation of the reference datasets.
\strong{These functions are internally called by \code{\link[RAPToR]{prepare_refdata}} from RAPToR.}
}
\seealso{
\code{\link[RAPToR]{prepare_refdata}} \code{\link[RAPToR]{ge_im}}
}

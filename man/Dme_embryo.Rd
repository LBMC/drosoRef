% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Dme_embryo-data.R
\docType{data}
\name{Dme_embryo}
\alias{Dme_embryo}
\title{Dme_embryo}
\format{
An object of class \code{list} of length 6.
}
\source{
\href{https://fruitfly.org/sequence/download.html#modencode_expression_scores}{fruitfly.org}
}
\usage{
Dme_embryo
}
\description{
Transcriptomic data from \emph{D. melanogaster} embryonic samples.
}
\details{
One time series is included in this dataset.
\itemize{
\item \insertCite{graveley2011developmental}{drosoRef}
}

The gene expression matrix is \eqn{log(X + 1)} of quantile-normalized expression data.
}
\section{Format }{

A list with :
\itemize{
\item \verb{$g}: The gene expression matrix (genes as rows, samples as columns)
\item \verb{$p}: A dataframe of phenotypic data on the samples, usually :
\itemize{
\item \code{sname} : The sample names (and colnames of the gene expression matrix).
\item \code{age} : Sample developmental age. May be scaled to join multiple datasets.
\item \code{cov} : A factor separating the samples into groups if needed (\emph{e.g} multiple datasets, batches); else NULL.
\item \code{age_ini} : Sample chronological age, as given in the literature.
\item \code{accession} : Sample accession ID for GEO/ArrayExpress.
}
\item \verb{$geim_params}: A list of elements needed for the gene expression interpolation model :
\itemize{
\item \verb{$formula} : the model formula.
\item \verb{$method} : the model type (eg. gam, glm).
\item \verb{$dim_red} : the dimension reduction method to use (pca, ica).
\item \verb{$nc}: The number PCA/ICA components to use in the model.
}
\item \verb{$t.unit}: the time series unit (e.g 'hours').
\item \verb{$cov.levels}: a named list of potential covariate with the level to interpolate as.
\item \verb{$metadata}: a named list of extra metadata (e.g organism, profiling technology).
}
}

\references{
\insertAllCited{}
}
\keyword{datasets}

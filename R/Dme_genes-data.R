#' Dme_genes
#' 
#' A gene ID table for *D. melanogaster*.
#' 
#' This table was built directly from the ensembl biomaRt.
#' 
#' 
#' @docType data
#' 
#' @section Format:
#' A dataframe with the folowing columns :
#' 
#'  - `fb_id`: FbGene ID (*e.g* `FBgn0038257`)
#'  - `transcript_id`: Transcript ID (*e.g* `FBtr0336877`)
#'  - `public_name`: Gene name (*e.g* `smp-30`)
#'  - `transcript_length`: Transcript length from 5'UTR start to 3'UTR end (*e.g* `1102`)
#' 
#' 
#' @source \href{https://www.ensembl.org/index.html}{ensembl biomaRt} 
#' 
"Dme_genes"
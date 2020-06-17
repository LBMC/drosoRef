sapply(c("utils", "limma", "RAPToR"), 
       requireNamespace, quietly = T)

# utils for ID conversion
load("data/Dme_genes.RData")

# fetch data
g_url_dsgraveley2011 <- "ftp://ftp.fruitfly.org/pub/download/modencode_expression_scores/Celniker_Drosophila_Annotation_20120616_1428_allsamps_MEAN_gene_expression.csv.gz"
g_file_dsgraveley2011 <- "data-raw/dsgraveley2011.csv.gz"
utils::download.file(g_url_dsgraveley2011, destfile = g_file_dsgraveley2011)


X <- read.table(gzfile(g_file_dsgraveley2011), sep = ',', row.names = 1, h = T)

# select embryo time series samples
X <- X[,1:12]

# convert gene ids to FBgn
X <- RAPToR::format_ids(X, Dme_genes, from = "public_name", to = "fb_id")

# get pdata from sample names
p <- data.frame(sname = colnames(X), age = as.numeric(gsub("em(\\d+)\\.\\d+hr", "\\1", colnames(X))),
                stringsAsFactors = FALSE)


# log & normalize
X <- log1p(limma::normalizeBetweenArrays(X, method = "quantile"))


# get nc for geim 

pca <- summary(stats::prcomp(t(X), rank = 10, center = TRUE, scale = FALSE))
nc <- sum(pca$importance["Cumulative Proportion",] < .99) + 1 


Dme_embryo <- list(g = X,
                   p = p,
                   geim_params = list(formula = "X ~ s(age, bs = 'cr')",
                                      method = "gam",
                                      dim_red = "pca",
                                      nc = nc)
)


save(Dme_embryo, file = "data/Dme_embryo.RData", compress = "xz")

# cleanup
file.remove(g_file_dsgraveley2011)
rm(g_url_dsgraveley2011, g_file_dsgraveley2011, 
   X, p, pca, nc, 
   Dme_genes, Dme_embryo)
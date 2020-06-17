requireNamespace('biomaRt', quietly = T)

# get gene ids and length info from the biomart
mart <- biomaRt::useMart("ensembl", dataset = "dmelanogaster_gene_ensembl")
Dme_genes <- biomaRt::getBM(attributes = c("ensembl_gene_id", 
                                           "ensembl_transcript_id",
                                           "external_gene_name",
                                           "transcript_length"),
                             mart = mart)
colnames(Dme_genes)[1:3] <- c("fb_id", "transcript_id", "public_name")

# save object to data
save('Dme_genes', file = "data/Dme_genes.RData", compress = "xz")
rm(mart, Dme_genes)
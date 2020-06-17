datasets_s <- "name, tstart, tend, tunit
Dme_embryo, 0, 22, hours past egg-laying
"

devstages_s <-"name, tstart, tend, tunit
Cleavage, 0, 2.15, hours past egg-laying
Blastoderm, 2.15, 2.8, hours past egg-laying
Gastrulation, 2.8, 3.15, hours past egg-laying
Germ band elongation, 3.15, 7.3, hours past egg-laying
Germ band retraction, 7.3, 10.3, hours past egg-laying
Dorsal closure, 10.3, 13, hours past egg-laying
Cuticle secretion, 13, 22, hours past egg-laying
"

devst <- read.table(text = devstages_s, h = T, sep = ',', stringsAsFactors = F)
devst$tunit <- factor(devst$tunit)

dss <- read.table(text = datasets_s, h = T, sep = ',', stringsAsFactors = F)
dss$tunit <- factor(dss$tunit)

Dme_devstages <- list(
  devstages = devst, 
  datasets = dss)

save("Dme_devstages", file = "data/Dme_devstages.RData")

rm(devstages_s, devst,
   datasets_s, dss,
   Dme_devstages)
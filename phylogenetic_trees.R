install.packages("ape")
library(ape)
install.packages("phangorn")
library(phangorn)
fdir <- system.file("extdata/trees", package = "phangorn")
primates <- read.phyDat(file.path(fdir, "primates.dna"),
                        format = "interleaved")
distanceMatrix_primates  <- dist.ml(primates)
treeUPGMA_primates  <- upgma(distanceMatrix_primates)
treeNJ_primates  <- NJ(distanceMatrix_primates)
plot(treeUPGMA_primates, main="UPGMA")
plot(treeNJ_primates, "unrooted", main="NJ")


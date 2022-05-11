setwd("/Users/annadiederich/Uni/Bioinfo")
Calmodulin_alignment <- read.table("alignedSequencesCalmodulin.txt", header=F, sep="\t")
Calmodulin_alignment_vertical <- t(Calmodulin_alignment_horizontal)
unlist(Calmodulin_alignment_vertical)
Calmodulin_alignment_vertical[,1]
Calmodulin_alignment_vertical[,2]
Split_Sequenz1 <- strsplit(Calmodulin_alignment_vertical[,1], split="")
Split_Sequenz2 <- strsplit(Calmodulin_alignment_vertical[,2], split="")
Split_Sequenz1 %in% Split_Sequenz2
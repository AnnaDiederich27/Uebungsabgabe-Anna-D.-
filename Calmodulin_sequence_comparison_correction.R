setwd("/Users/annadiederich/Uni/Bioinfo")
Calmodulin_alignment <- read.table("alignedSequencesCalmodulin.txt", header=F, sep="\t")
Calmodulin_alignment_flip <- t(Calmodulin_alignment) 

Calmodulin_alignment_flip1 <- strsplit(Calmodulin_alignment_flip$V1, "") 
Calmodulin_alignment_flip2 <- strsplit(Calmodulin_alignment_flip$V2, "") 

Calmodulin_alignment_df <- data.frame(Calmodulin_alignment_flip1, Calmodulin_alignment_flip2)
names(Calmodulin_alignment_df) <- c("V1", "V2")

Calmodulin_alignment_df$equal <- Calmodulin_alignment_df$V1 == Calmodulin_alignment_df$V2
helpcounter <- subset(Calmodulin_alignment_df$equal, Calmodulin_alignment_df$equal==TRUE)
percentage <- (length(helpcounter)/length(Calmodulin_alignment_df$V1))*100
percentage



#Load sequences
setwd("/Users/annadiederich/Uni/Bioinfo")
MSA_isoforms <- read.table("human_ACTG_Isoforms.txt", header=F, sep="\t")
#Split the character strings for all 9 Sequences
MSA_isoforms_split <- strsplit(MSA_isoforms$V1,"")
MSA_isoforms_split
#Create a dataframe with the split strings
MSA_isoforms_df <- data.frame(MSA_isoforms_split)
#Invert the Variable and Observation in the dataframe 
#Transpose the dataframe 
MSA_isoforms_flip <- t(MSA_isoforms_df)
MSA_isoforms_flip
#Convert the matrix resulting from the transposition into a dataframe 
MSA <- as.data.frame(MSA_isoforms_flip)
# Identify the most frequently occuring observation (amino acid) in each column
# Obwohl es sich um einen Dataframe handelt, muss hier table() eingesetzt werden 
# --> anders als wir es im Tutorium gedacht haben...
# table() kreiert nämlich nach dem Sortieren durch sort() eine Häufigkeitstabelle 
# aus dieser Häufigkeitstabelle wird durch [1] und die Angabe decreasing=TRUE die Beobachtung mit dem größten Häufigkeitswert ausgesucht
for(i in 1:length(MSA)){
print(c(sort(table(MSA[[i]]),decreasing=TRUE)[1],i))
}




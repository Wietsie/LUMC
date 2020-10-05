setwd("C:/Users/Wietse/Desktop/Stage/Current work file")
braindata <- rio::import("brainspan transcriptome 1-26 pcw2.csv", header = FALSE)
str(braindata)
#braindata <- gsub(",",".",braindata)
braindata <- apply(braindata, 2, as.numeric)

braindata[1:5,1:5]
str(braindata)

rownames(braindata) <- as.character(braindata[,1])

braindata <- braindata[,-1]
braindata.t <- t(braindata)
braindata.t <- as.data.frame(braindata.t)
rownames(braindata.t) <- paste0("S", 1:nrow(braindata.t))


braindata.t[1:5,1:5]
str(braindata.t)
save(braindata.t, file="Braindata_transposed_all_genes.RData")
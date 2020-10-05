TOM = TOMsimilarityFromExpr(datExpr, power = 6); 
module = "green";
probes = names(datExpr);
inModule = (moduleColors==module);
modProbes = probes[inModule];  
modTOM = TOM[inModule, inModule]; 
dimnames(modTOM) = list(modProbes, modProbes);
vis = exportNetworkToVisANT(modTOM, file = paste("VisANTInput-", module, ".txt", sep=""), weighted = TRUE, threshold = 0, probeToGene = data.frame(annot$id, annot$genesymbol) )
 
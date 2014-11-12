#functions for a smooth PCA analysis
#display, choose PCs and plot ... do not use MATLAB
############################################
############################################

xDat <- as.matrix(spectra[2:103])

#xDat <- as.matrix(spectra[2:103])
dim(xDat)
TxDat <- t(xDat)

#dTxDat <- as.data.frame(TxDat)
  
dTxDat.pca <- prcomp(TxDat, retx = TRUE, center = FALSE)

summary(dTxDat.pca)




################
################
################
################
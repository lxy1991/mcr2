library(ALS);
library(lokern);

#controls
doMC = F;
plotDat = T;
ncomp = 4;
path  <- "T:/Technik/Spektroskopie/UserData_p-mbe/IC 940 Professional Vaio/Project/Sugars/DecompositionExperiments/";


#auxillary functions
loadConc <- function(path, name){
  p <- paste(path, name, ".csv", sep="");
  conc  <- read.csv(p, header = T, sep =";");
  conc <- conc[,-1];
  return(conc);
}


#
# load all the data
###########################################################################
source('T:/Technik/Spektroskopie/UserData_p-mbe/R/R-Scripts/PCA_2.R')

X.raw <- readDataHyp('SKIP_TEST');
S.raw <- readDataHyp('S_G_F_PURE');
S.raw <- rbind(S.raw[4,], S.raw[1:3,]); #reorder, so that water is first
C.raw <- loadConc(path, "2ndSucroseDecompConc");

#interpolate C to the same length as the number of Spectra in X
n <- dim(X.raw)[1];
C  <- matrix(1, nrow = n, ncol = ncomp);
for(i in 1:dim(C.raw)[2]){
  fit <- lokerns(seq(1:dim(C.raw)[1]), C.raw[,i], n.out=n);
  C[,i] <- fit$est;
}
#plot to visualize
if(plotDat){
  matplot(C,type='l')
  matplot(seq(1,n, length.out= dim(C.raw)[1]), C.raw, type='p', pch=1,add=T)
}




#baseline correct the spectra of pure components
mins  <-apply(S.raw,1,min)
S <- S.raw - mins;
#scale spectra of pure components to unit hight
max  <- apply(S, 1, max);
S <- S / max;

#X <- X.raw - S[4,];
X <- X.raw;

########################################################################
#subtract background (water in this case)
Sbg <- cbind(S$spc[1,], rep(1,dim(S$spc)[1]));
bgFit <- lm(t(X[[]])~Sbg-1);
if(plotDat){
  matplot(Sbg %*% coef(bgFit),type="l", col='black');
}
Xhat <- t(Sbg %*% coef(bgFit));
X <- X - Xhat; 
S[1]  <- 0;


#mean center
if(doMC){
  avgX <- apply(X,2,mean)
  X <- X - avgX;
  avgS <- apply(S,2,mean);
  S <- S - avgS;
}

#plot the spectra for inspection
if(plotDat){
  par(mfrow=c(2,1))
  plot(S[,], col=1:4)
  plot(X)
}
x11()
plot(-rep(S$spc[4,],100), t(Xsp[1:100,]), type='l')


# X.mat <- as.matrix(X$spc);
# S.mat <- as.matrix(S$spc);

CList  <- list(C);
#CList  <- list(matrix(1,nrow=dim(X.mat)[1],ncol=dim(S.mat)[1]));#init Clist with ones
PsiList  <- list(X[[]]);

als <- als(CList = CList, PsiList = PsiList,S=t(S[[]]), maxiter = 10, uniC=T, nonnegS=F, nonnegC=T, optS1st=T, baseline=T, forcemaxit = F, thresh=0.01, normS=T)

#x11(10)
#plotS(als$S, X.raw@wavelength, out="pdf", filename="a")

X11(3) #new plot device
matplot(als$S, type='l')
x11(4)
matplot(als$CList[[1]], type='l')

summary(als)


matplot(als$S[], t(S$spc[]), type = 'l')

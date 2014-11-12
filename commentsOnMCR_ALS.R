als <- als(CList = list(conc), PsiList = list(spc), S = mdl.opa$pure.comp, nonnegS=T, nonnegC=T, optS1st=FALSE, uniC =T)

als <- als(CList = conc, PsiList = list(spc), S = mcr.efa$pure.comp, nonnegS=T, nonnegC=T, optS1st=FALSE, uniC =T)

als <- als(CList = CList, PsiList = list(spc), S = mcr.efa$pure.comp, nonnegS=T, nonnegC=T, optS1st=FALSE, uniC =T)
als <- als(CList = list(conc), PsiList = list(spc), S = mcr.efa$pure.comp, nonnegS=T, nonnegC=T, optS1st=FALSE, uniC =T)


####
#interpolation
####
c <- matrix(0, "number of spectra","number of components")
#initialize matrix with 0os
for(i in 1:dim("realConcMatrix components")[2]){
  fit <- lokerns(seq(1:dim("realConcMatrix number of samples")[1]), "realConcMatrix"[,i], n.out="no of samples");
  c[,i] <- fit$est;
}
#example
c <- matrix(1,80,3)
for(i in 1:dim(concOld)[2]){fit <- lokerns(seq(1:dim(concOld)[1]),concOld[,i],n.out=80);
                            + c[,i] <- fit$est;}
> for(i in 1:dim(concOld)[2]){fit <- lokerns(seq(1:dim(concOld)[1]),concOld[,i],n.out=80);
                              + c[,i] <- fit$est;}
#MCR-ALS script
############################################
############################################

library(hyperSpec)
library(RColorBrewer)
library(pls)
library(ALS)
library(ChemometricsWithR)

############################################

doALS <- function(spc = F, conc = F, ncomp = F, nonnegS = F, nonnegC = T)
{
  if(spc == F || ncomp == F)
    {
      cat("You forgot your spectra matrix or the number of components which were investigated...")
      cat(sep = "\n")
      cat(sep = "\n")
    }  
  else
    {
      if(spc != F && ncomp != F && conc == FALSE)
        {
          cat("Doing MCR-ALS with suitable estimates for the concentration found by EFA...")
          cat(sep = "\n")
          cat(sep = "\n")
          efa <- efa(spc, ncomp)
          #estimate conc. profile with evolving factor analysis
          als.mod <- als(CList = list(efa$pure.comp), PsiList = list(spc), nonnegS = nonnegS, nonnegC = nonnegC, S = matrix(0,dim(spc)[2],ncomp))
        }
      else
        {
          if(spc != F && ncomp != F && conc != F)
            {
              cat("Doing MCR-ALS with the estimates for the concentration you have provided...")
              cat(sep = "\n")
              cat(sep = "\n")
              concM <- as.matrix(conc)
              concM <- concM[,1:ncomp]
              #matrix needed for als function
              als.mod <- als(CList = list(concM), PsiList = list(spc), nonnegS = nonnegS, nonnegC = nonnegC, S = matrix(0,dim(spc)[2],ncomp))
            }
        }
      return(als.mod);
    }
}

plotALS <- function(model)
{
  if(is.null(model))
    {
      cat("You forgot the model...")
      cat(n = "\n")
      cat(n = "\n")
    }
  else
    {
      X11()
      par(mfrow = c(2,1))
      matplot(model$CList[[1]], type = "l")
      matplot(model$S[], type = "l")
    }
}
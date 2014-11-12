#plot, plot, plot, plot, plot...
#.eps, .png
############################################
############################################
plotPLS <- function(model)
{ 
  postscript("crossValRMSEP.eps", horizontal = TRUE, onefile = FALSE, paper = "special", height = 8.26771654, width = 11.6929134)
  plot(RMSEP(model), main = "Cross-validated RMSEP curves", legendpos = "topright", xlab = "No. of Components", ylab = "RMSEP")
  dev.off()
  png("crossValRMSEP.png", height = 2480, width = 3508, res = 300)
  plot(RMSEP(model), main = "Cross-validated RMSEP curves", legendpos = "topright", xlab = "No. of Components", ylab = "RMSEP")
  dev.off()
  ############################################
  ############################################
  ############################################
  
  postscript("crossValPredictions1Comp.eps", horizontal = TRUE, onefile = FALSE, paper = "special", height = 8.26771654, width = 11.6929134)
  plot(model, ncomp = 1, asp = 1, line = TRUE, xlab = "Measured", ylab = "Predicted", main = "Cross-validated predictions - 1 Comp.", pch = 21, bg = "grey")
  dev.off()
  png("crossValPredictions1Comp.png", height = 2480, width = 3508, res = 300)
  plot(model, ncomp = 1, asp = 1, line = TRUE, xlab = "Measured", ylab = "Predicted", main = "Cross-validated predictions - 1 Comp.", pch = 21, bg = "grey")
  dev.off()
  ############################################
  
  postscript("crossValPredictions2Comp.eps", horizontal = TRUE, onefile = FALSE, paper = "special", height = 8.26771654, width = 11.6929134)
  plot(model, ncomp = 2, asp = 1, line = TRUE, xlab = "Measured", ylab = "Predicted", main = "Cross-validated predictions - 2 Comp.", pch = 21, bg = "grey")
  dev.off()
  png("crossValPredictions2Comp.png", height = 2480, width = 3508, res = 300)
  plot(model, ncomp = 2, asp = 1, line = TRUE, xlab = "Measured", ylab = "Predicted", main = "Cross-validated predictions - 2 Comp.", pch = 21, bg = "grey")
  dev.off()
  ############################################
  
  postscript("crossValPredictions3Comp.eps", horizontal = TRUE, onefile = FALSE, paper = "special", height = 8.26771654, width = 11.6929134)
  plot(model, ncomp = 3, asp = 1, line = TRUE, xlab = "Measured", ylab = "Predicted", main = "Cross-validated predictions - 3 Comp.", pch = 21, bg = "grey")
  dev.off()
  png("crossValPredictions3Comp.png", height = 2480, width = 3508, res = 300)
  plot(model, ncomp = 3, asp = 1, line = TRUE, xlab = "Measured", ylab = "Predicted", main = "Cross-validated predictions - 3 Comp.", pch = 21, bg = "grey")
  dev.off()
  ############################################
  
  postscript("crossValPredictions4Comp.eps", horizontal = TRUE, onefile = FALSE, paper = "special", height = 8.26771654, width = 11.6929134)
  plot(model, ncomp = 4, asp = 1, line = TRUE, xlab = "Measured", ylab = "Predicted", main = "Cross-validated predictions - 4 Comp.", pch = 21, bg = "grey")
  dev.off()
  png("crossValPredictions4Comp.png", height = 2480, width = 3508, res = 300)
  plot(model, ncomp = 4, asp = 1, line = TRUE, xlab = "Measured", ylab = "Predicted", main = "Cross-validated predictions - 4 Comp.", pch = 21, bg = "grey")
  dev.off()
  ############################################
  
  postscript("crossValPredictions5Comp.eps", horizontal = TRUE, onefile = FALSE, paper = "special", height = 8.26771654, width = 11.6929134)
  plot(model, ncomp = 5, asp = 1, line = TRUE, xlab = "Measured", ylab = "Predicted", main = "Cross-validated predictions - 5 Comp.", pch = 21, bg = "grey")
  dev.off()
  png("crossValPredictions5Comp.png", height = 2480, width = 3508, res = 300)
  plot(model, ncomp = 5, asp = 1, line = TRUE, xlab = "Measured", ylab = "Predicted", main = "Cross-validated predictions - 5 Comp.", pch = 21, bg = "grey")
  dev.off()
  ############################################
  
  postscript("crossValPredictions5Comp.eps", horizontal = TRUE, onefile = FALSE, paper = "special", height = 8.26771654, width = 11.6929134)
  plot(model, ncomp = 5, asp = 1, line = TRUE, xlab = "Measured", ylab = "Predicted", main = "Cross-validated predictions - 5 Comp.", pch = 21, bg = "grey")
  dev.off()
  png("crossValPredictions5Comp.png", height = 2480, width = 3508, res = 300)
  plot(model, ncomp = 5, asp = 1, line = TRUE, xlab = "Measured", ylab = "Predicted", main = "Cross-validated predictions - 5 Comp.", pch = 21, bg = "grey")
  dev.off()
  ############################################
  ############################################
  ############################################
  
  postscript("ScorePlotComp1.eps", horizontal = TRUE, onefile = FALSE, paper = "special", height = 8.26771654, width = 11.6929134)
  plot(model, plottype = "scores", comps = 1, bg = "grey", pch = 21, xlab = "Sample No.", main = "Score plot Comp. 1")
  dev.off()
  png("ScorePlotComp1.png", height = 2480, width = 3508, res = 300)
  plot(model, plottype = "scores", comps = 1, bg = "grey", pch = 21, xlab = "Sample No.", main = "Score plot Comp. 1")
  dev.off()
  ############################################
  
  postscript("ScorePlotComp2.eps", horizontal = TRUE, onefile = FALSE, paper = "special", height = 8.26771654, width = 11.6929134)
  plot(model, plottype = "scores", comps = 2, bg = "grey", pch = 21, xlab = "Sample No.", main = "Score plot Comp. 2")
  dev.off()
  png("ScorePlotComp2.png", height = 2480, width = 3508, res = 300)
  plot(model, plottype = "scores", comps = 2, bg = "grey", pch = 21, xlab = "Sample No.", main = "Score plot Comp. 2")
  dev.off()
  ############################################
  
  postscript("ScorePlotComp3.eps", horizontal = TRUE, onefile = FALSE, paper = "special", height = 8.26771654, width = 11.6929134)
  plot(model, plottype = "scores", comps = 3, bg = "grey", pch = 21, xlab = "Sample No.", main = "Score plot Comp. 3")
  dev.off()
  png("ScorePlotComp3.png", height = 2480, width = 3508, res = 300)
  plot(model, plottype = "scores", comps = 3, bg = "grey", pch = 21, xlab = "Sample No.", main = "Score plot Comp. 3")
  dev.off()
  ############################################
  
  postscript("ScorePlotComp4.eps", horizontal = TRUE, onefile = FALSE, paper = "special", height = 8.26771654, width = 11.6929134)
  plot(model, plottype = "scores", comps = 4, bg = "grey", pch = 21, xlab = "Sample No.", main = "Score plot Comp. 4")
  dev.off()
  png("ScorePlotComp4.png", height = 2480, width = 3508, res = 300)
  plot(model, plottype = "scores", comps = 4, bg = "grey", pch = 21, xlab = "Sample No.", main = "Score plot Comp. 4")
  dev.off()
  ############################################
  
  postscript("ScorePlotComp5.eps", horizontal = TRUE, onefile = FALSE, paper = "special", height = 8.26771654, width = 11.6929134)
  plot(model, plottype = "scores", comps = 5, bg = "grey", pch = 21, xlab = "Sample No.", main = "Score plot Comp. 5")
  dev.off()
  png("ScorePlotComp5.png", height = 2480, width = 3508, res = 300)
  plot(model, plottype = "scores", comps = 5, bg = "grey", pch = 21, xlab = "Sample No.", main = "Score plot Comp. 5")
  dev.off()
  ############################################
  ############################################
  ############################################
  
  postscript("ScorePlotComp1vsComp2.eps", horizontal = TRUE, onefile = FALSE, paper = "special", height = 8.26771654, width = 11.6929134)
  plot(model, plottype = "scores", comps = 1:2, bg = "grey", pch = 21, main = "Score plot Comp. 1 vs. Comp. 2")
  dev.off()
  png("ScorePlotComp1vsComp2.png", height = 2480, width = 3508, res = 300)
  plot(model, plottype = "scores", comps = 1:2, bg = "grey", pch = 21, main = "Score plot Comp. 1 vs. Comp. 2")
  dev.off()
  ############################################
  
  postscript("ScorePlotComp2vsComp3.eps", horizontal = TRUE, onefile = FALSE, paper = "special", height = 8.26771654, width = 11.6929134)
  plot(model, plottype = "scores", comps = 2:3, bg = "grey", pch = 21, main = "Score plot Comp. 2 vs. Comp. 3")
  dev.off()
  png("ScorePlotComp2vsComp3.png", height = 2480, width = 3508, res = 300)
  plot(model, plottype = "scores", comps = 2:3, bg = "grey", pch = 21, main = "Score plot Comp. 2 vs. Comp. 3")
  dev.off()
  ############################################
  
  postscript("ScorePlotComp3vsComp4.eps", horizontal = TRUE, onefile = FALSE, paper = "special", height = 8.26771654, width = 11.6929134)
  plot(model, plottype = "scores", comps = 3:4, bg = "grey", pch = 21, main = "Score plot Comp. 3 vs. Comp. 4")
  dev.off()
  png("ScorePlotComp3vsComp4.png", height = 2480, width = 3508, res = 300)
  plot(model, plottype = "scores", comps = 3:4, bg = "grey", pch = 21, main = "Score plot Comp. 3 vs. Comp. 4")
  dev.off()
  ############################################
  
  postscript("ScorePlotComp4vsComp5.eps", horizontal = TRUE, onefile = FALSE, paper = "special", height = 8.26771654, width = 11.6929134)
  plot(model, plottype = "scores", comps = 4:5, bg = "grey", pch = 21, main = "Score plot Comp. 4 vs. Comp. 5")
  dev.off()
  png("ScorePlotComp4vsComp5.png", height = 2480, width = 3508, res = 300)
  plot(model, plottype = "scores", comps = 4:5, bg = "grey", pch = 21, main = "Score plot Comp. 4 vs. Comp. 5")
  dev.off()
  ############################################
  ############################################
  ############################################
  
  postscript("ScorePlotComp1_3.eps", horizontal = TRUE, onefile = FALSE, paper = "special", height = 8.26771654, width = 11.6929134)
  plot(model, plottype = "scores", comps = 1:3, bg = "grey", pch = 21, main = "Score plot Comp. 1 - 3")
  dev.off()
  png("ScorePlotComp1_3.png", height = 2480, width = 3508, res = 300)
  plot(model, plottype = "scores", comps = 1:3, bg = "grey", pch = 21, main = "Score plot Comp. 1 - 3")
  dev.off()
  ############################################
  
  postscript("ScorePlotComp1_5.eps", horizontal = TRUE, onefile = FALSE, paper = "special", height = 8.26771654, width = 11.6929134)
  plot(model, plottype = "scores", comps = 1:5, bg = "grey", pch = 21, main = "Score plot Comp. 1 - 5")
  dev.off()
  png("ScorePlotComp1_5.png", height = 2480, width = 3508, res = 300)
  plot(model, plottype = "scores", comps = 1:5, bg = "grey", pch = 21, main = "Score plot Comp. 1 - 5")
  dev.off()
  ############################################
  ############################################
  ############################################
  
  postscript("LoadingPLotComp1.eps", horizontal = TRUE, onefile = FALSE, paper = "special", height = 8.26771654, width = 11.6929134)
  plot(model, plottype = "loadings", comps = 1, main = "Loading plot Comp. 1", xlab = "Wavelength index", ylab = "Loading value")
  dev.off()
  png("LoadingPLotComp1.png", height = 2480, width = 3508, res = 300)
  plot(model, plottype = "loadings", comps = 1, main = "Loading plot Comp. 1", xlab = "Wavelength index", ylab = "Loading value")
  dev.off()
  ############################################

  postscript("LoadingPLotComp2.eps", horizontal = TRUE, onefile = FALSE, paper = "special", height = 8.26771654, width = 11.6929134)
  plot(model, plottype = "loadings", comps = 2, main = "Loading plot Comp. 2", xlab = "Wavelength index", ylab = "Loading value")
  dev.off()
  png("LoadingPLotComp2.png", height = 2480, width = 3508, res = 300)
  plot(model, plottype = "loadings", comps = 2, main = "Loading plot Comp. 2", xlab = "Wavelength index", ylab = "Loading value")
  dev.off()
  ############################################

  postscript("LoadingPLotComp3.eps", horizontal = TRUE, onefile = FALSE, paper = "special", height = 8.26771654, width = 11.6929134)
  plot(model, plottype = "loadings", comps = 3, main = "Loading plot Comp. 3", xlab = "Wavelength index", ylab = "Loading value")
  dev.off()
  png("LoadingPLotComp3.png", height = 2480, width = 3508, res = 300)
  plot(model, plottype = "loadings", comps = 3, main = "Loading plot Comp. 3", xlab = "Wavelength index", ylab = "Loading value")
  dev.off()
  ############################################
  
  postscript("LoadingPLotComp4.eps", horizontal = TRUE, onefile = FALSE, paper = "special", height = 8.26771654, width = 11.6929134)
  plot(model, plottype = "loadings", comps = 4, main = "Loading plot Comp. 4", xlab = "Wavelength index", ylab = "Loading value")
  dev.off()
  png("LoadingPLotComp4.png", height = 2480, width = 3508, res = 300)
  plot(model, plottype = "loadings", comps = 4, main = "Loading plot Comp. 4", xlab = "Wavelength index", ylab = "Loading value")
  dev.off()
  ############################################
  
  postscript("LoadingPLotComp5.eps", horizontal = TRUE, onefile = FALSE, paper = "special", height = 8.26771654, width = 11.6929134)
  plot(model, plottype = "loadings", comps = 5, main = "Loading plot Comp. 5", xlab = "Wavelength index", ylab = "Loading value")
  dev.off()
  png("LoadingPLotComp5.png", height = 2480, width = 3508, res = 300)
  plot(model, plottype = "loadings", comps = 5, main = "Loading plot Comp. 5", xlab = "Wavelength index", ylab = "Loading value")
  dev.off()
  ############################################
  ############################################
  ############################################

  postscript("LoadingPLotComp1_2.eps", horizontal = TRUE, onefile = FALSE, paper = "special", height = 8.26771654, width = 11.6929134)
  plot(model, plottype = "loadings", comps = 1:2, main = "Loading plot Comp. 1 - 2", ylab = "Loading value", legendpos = "bottomleft")
  dev.off()
  png("LoadingPLotComp1_2.png", height = 2480, width = 3508, res = 300)
  plot(model, plottype = "loadings", comps = 1:2, main = "Loading plot Comp. 1 - 2", ylab = "Loading value", legendpos = "bottomleft")
  dev.off()
  ############################################
  
  postscript("LoadingPLotComp1_3.eps", horizontal = TRUE, onefile = FALSE, paper = "special", height = 8.26771654, width = 11.6929134)
  plot(model, plottype = "loadings", comps = 1:3, main = "Loading plot Comp. 1 - 3", ylab = "Loading value", legendpos = "bottomleft")
  dev.off()
  png("LoadingPLotComp1_3.png", height = 2480, width = 3508, res = 300)
  plot(model, plottype = "loadings", comps = 1:3, main = "Loading plot Comp. 1 - 3", ylab = "Loading value", legendpos = "bottomleft")
  dev.off()
  ############################################
  
  postscript("LoadingPLotComp1_4.eps", horizontal = TRUE, onefile = FALSE, paper = "special", height = 8.26771654, width = 11.6929134)
  plot(model, plottype = "loadings", comps = 1:4, main = "Loading plot Comp. 1 - 4", ylab = "Loading value", legendpos = "bottomleft")
  dev.off()
  png("LoadingPLotComp1_4.png", height = 2480, width = 3508, res = 300)
  plot(model, plottype = "loadings", comps = 1:4, main = "Loading plot Comp. 1 - 4", ylab = "Loading value", legendpos = "bottomleft")
  dev.off()
  ############################################
  
  postscript("LoadingPLotComp1_5.eps", horizontal = TRUE, onefile = FALSE, paper = "special", height = 8.26771654, width = 11.6929134)
  plot(model, plottype = "loadings", comps = 1:5, main = "Loading plot Comp. 1 - 5", ylab = "Loading value", legendpos = "bottomleft")
  dev.off()
  png("LoadingPLotComp1_5.png", height = 2480, width = 3508, res = 300)
  plot(model, plottype = "loadings", comps = 1:5, main = "Loading plot Comp. 1 - 5", ylab = "Loading value", legendpos = "bottomleft")
  dev.off()
}
#decomposition of sucrose, overlaid spectra
#all spectra in one graph
############################################
############################################
path <- "T:/Technik/Spektroskopie/UserData_p-mbe/IC 940 Professional Vaio/Project/Sugars/DecompositionExperiments/01-FirstDecomposition_Spectra.csv";
############################################ -> path of the file (csv)

decoS <- read.csv(path, header = T, sep=";")
############################################ -> read csv into decoS

c <- colors()
############################################ -> put random colors into c

matplot(decoS$wl, decoS[,-1], xlab = "Wavelength in nm", ylab = "Absorbance", main = "Overlaid spectra", type = "l", col = c)
############################################ -> plot all spectra in different & random colors
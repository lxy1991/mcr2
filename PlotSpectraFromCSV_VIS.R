#decomposition of sucrose, overlaid spectra for VIS
#all spectra in one graph
############################################
############################################
path <- "T:/Technik/Spektroskopie/UserData_p-mbe/IC 940 Professional Vaio/Project/Sugars/DecompositionExperiments/01-FirstDecomposition_Spectra.csv";
############################################ -> path of the file (csv)

decoS <- read.csv(path, header = T, sep=";")
############################################ -> read csv into decoS

c <- colors()
############################################ -> put random colors into c

wave_vis <- seq(400,800,by=0.5)
############################################ -> sequence for visible wavelengths

matplot(wave_vis, decoS[1:801,-1], xlab = "Wavelength in nm", ylab = "Absorbance", main = "Overlaid vis spectra", type = "l", col = c)
############################################ -> plot vis spectra in different & random colors
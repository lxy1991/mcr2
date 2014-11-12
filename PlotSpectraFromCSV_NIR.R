#decomposition of sucrose, overlaid spectra for nir
#all spectra in one graph
############################################
############################################
path <- "T:/Technik/Spektroskopie/UserData_p-mbe/IC 940 Professional Vaio/Project/Sugars/DecompositionExperiments/01-FirstDecomposition_Spectra.csv";
############################################ -> path of the file (csv)

decoS <- read.csv(path, header = T, sep=";")
############################################ -> read csv into decoS

c <- colors()
############################################ -> put random colors into c

wave_nir<- seq(800.5,2500, by=0.5)
############################################ -> sequence for nir wavelengths

matplot(wave_nir, decoS[802:4201,-1], xlab = "Wavelength in nm", ylab = "Absorbance", main = "Overlaid nir spectra", type = "l", col = c)
############################################ -> plot nir spectra in different & random colors
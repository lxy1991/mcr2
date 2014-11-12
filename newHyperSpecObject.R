#loading sucrose data from .csv-file
#for working with hyperSpec
############################################
############################################
path <- "T:/Technik/Spektroskopie/UserData_p-mbe/IC 940 Professional Vaio/Project/Sugars/DecompositionExperiments/01-FirstDecomposition_Spectra.csv";
############################################ -> path of the file (csv)

spectra <- read.csv(path, header = T, sep=";")
############################################ -> read csv into decoS

sucrose <- new("hyperSpec", wavelength = spectra$wl, spc = t(spectra[,-1]), data = data.frame(sample = colnames(spectra[,-1])), labels = list(.wavelength = "Wavelength in nm", spc = "Absorbance"))
############################################ -> make new hyperSpec object with loaded files

sucrose
############################################ -> print information of new hyperSpec object

#plot(sucrose[])
############################################ -> use this for plotting spectra (max. 50 files are plotted)
#loading spectra from .csv-file
#for working R (PCA etc.)
############################################
############################################

path <- "T:/Technik/Spektroskopie/UserData_p-mbe/IC 940 Professional Vaio/Project/Sugars/DecompositionExperiments/02-SecondDecomposition_Spectra_SKIP_TEST.csv";
############################################ -> path of the file (csv)

spectra <- t(read.csv(path, skip = 3, header = T, sep=";"))
#spectra <- as.data.frame(spectra)
wl <- spectra[1,];
spectra <- spectra[-1,];
#n  <- seq(400, dim(spectra[2], by=0.5))
colnames(spectra) <- sprintf("wl_%5.1f",wl);
rownames(spectra) <- 1:dim(spectra)[1];
############################################ -> read csv into decoS

sucrose <- new("hyperSpec", wavelength = wl, spc = spectra, labels = list(.wavelength = "Wavelength in nm", spc = "Absorbance"))
############################################ -> make new hyperSpec object with loaded files

sucrose
############################################ -> print information of new hyperSpec object

#plot(sucrose[1:50,,1900~2000], add =T)

############################################ -> use this for plotting spectra (max. 50 files are plotted)


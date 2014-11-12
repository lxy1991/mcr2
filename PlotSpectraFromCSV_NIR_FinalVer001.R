#decomposition of sucrose, overlaid spectra for nir
#all spectra in one graph
############################################
############################################
library("RColorBrewer")
library("colorspace")
path <- file.choose()
############################################ -> path of the file (csv)

decoS <- read.csv(path, skip = 3, header = T, sep=";")
############################################ -> read csv into decoS
z <- dim(decoS)[2] - 1
#c <- colors(z)
c <- diverge_hcl(z)
#cb <- brewer.pal(11, "Spectral")
############################################ -> put random colors into c

wave_nir<- seq(800.5,2500, by=0.5)
############################################ -> sequence for nir wavelengths

#matplot(wave_nir, decoS[802:4201,-1], xlab = "Wavelength in nm", ylab = "Absorbance", main = "Overlaid nir spectra", type = "l", col = c)
############################################ -> plot nir spectra in different & random colors
postscript("NIRspectra.eps", horizontal = TRUE, onefile = FALSE, paper = "special", height = 8.26771654, width = 11.6929134)
matplot(wave_nir, decoS[802:4201,-1], xlab = "Wavelength in nm", ylab = "Absorbance", main = "Overlaid NIR spectra", type = "l", col = c)
dev.off()
png("NIRspectra.png", height = 2480, width = 3508, res = 300)
matplot(wave_nir, decoS[802:4201,-1], xlab = "Wavelength in nm", ylab = "Absorbance", main = "Overlaid NIR spectra", type = "l", col = c)
dev.off()
matplot(wave_nir, decoS[802:4201,-1], xlab = "Wavelength in nm", ylab = "Absorbance", main = "Overlaid NIR spectra", type = "l", col = c)

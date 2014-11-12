#decomposition of sucrose, overlaid spectra
#all spectra in one graph
############################################
############################################
library("RColorBrewer")
path <- file.choose()
############################################ -> path of the file (csv)

decoS <- read.csv(path, skip = 3, header = T, sep=";")
############################################ -> read csv into decoS
z <- dim(decoS)[2] - 1
c <- colors(z)
cb <- brewer.pal(11, "Spectral")
############################################ -> put random colors into c

#matplot(decoS$wl, decoS[,-1], xlab = "Wavelength in nm", ylab = "Absorbance", main = "Overlaid spectra", type = "l", col = cb)
############################################ -> plot all spectra in different & random colors

postscript("Overlaid_spectra.eps", horizontal = TRUE, onefile = FALSE, paper = "special", height = 8.26771654, width = 11.6929134)
matplot(decoS$wl, decoS[,-1], xlab = "Wavelength in nm", ylab = "Absorbance", main = "Overlaid spectra", type = "l", col = c)
dev.off()
png("Overlaid_spectra.png", height = 2480, width = 3508, res = 300)
matplot(decoS$wl, decoS[,-1], xlab = "Wavelength in nm", ylab = "Absorbance", main = "Overlaid spectra", type = "l", col = c)
dev.off()
matplot(decoS$wl, decoS[,-1], xlab = "Wavelength in nm", ylab = "Absorbance", main = "Overlaid spectra", type = "l", col = c)

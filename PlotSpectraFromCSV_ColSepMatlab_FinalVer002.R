#decomposition of sucrose, overlaid spectra
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
set.seed(1)
#c <- colors(z)
c <- matlab.palette(z)

#cb <- brewer.pal(8, "BrBG")

############################################ -> put random colors into c

#matplot(decoS$wl, decoS[,-1], xlab = "Wavelength in nm", ylab = "Absorbance", main = "Overlaid spectra", type = "l", col = cb)
############################################ -> plot all spectra in different & random colors

postscript("Overlaid_spectra_ColMatlabSep.eps", horizontal = TRUE, onefile = FALSE, paper = "special", height = 8.26771654, width = 11.6929134)
matplot(decoS$wl, decoS[,-1], xlab = "Wavelength in nm", ylab = "Absorbance", main = "Overlaid spectra", type = "l", col = c, lty = 1)
dev.off()
png("Overlaid_spectraColMatlabSep.png", height = 2480, width = 3508, res = 300)
matplot(decoS$wl, decoS[,-1], xlab = "Wavelength in nm", ylab = "Absorbance", main = "Overlaid spectra", type = "l", col = c, lty = 1)
dev.off()
matplot(decoS$wl, decoS[,-1], xlab = "Wavelength in nm", ylab = "Absorbance", main = "Overlaid spectra", type = "l", col = c, lty = 1)

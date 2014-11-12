#decomposition of sucrose, graphical results
#all flows plotted seperately
############################################
############################################
library("RColorBrewer")
library("colorspace")
path <- file.choose()
############################################ -> path of the file (csv)

decoD <- read.csv(path, header = T, sep=";")
############################################ -> read csv into decoD

par(mfrow=c(3,1))
plot(decoD$pNr, decoD$S, xlab = "Sample number", ylab = "Conc. in ppm", main = "Conc. flow sucrose", type = "b", col = "red")
plot(decoD$pNr, decoD$G, xlab = "Sample number", ylab = "Conc. in ppm", main = "Conc. flow glucose", type = "b", col = "blue")
plot(decoD$pNr, decoD$F, xlab = "Sample number", ylab = "Conc. in ppm", main = "Conc. flow fructose", type = "b", col = "green")
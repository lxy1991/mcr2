#decomposition of sucrose, graphical results
#all flows plotted in one graph
############################################
############################################
library("RColorBrewer")
library("colorspace")
path <- file.choose()
############################################ -> path of the file (csv)

decoD <- read.csv(path, header = T, sep=";")
############################################ -> read csv into decoD

plot(decoD$pNr, decoD$S, xlim=c(0,30), ylim=c(0,100), xlab = "Sample number", ylab = "Conc. in ppm", main = "Overlaid conc. flow", type = "b", col = "red")
points(decoD$pNr, decoD$G, type = "b", col = "blue")
points(decoD$pNr, decoD$F, type = "b", col = "green")
############################################ -> plot sucrose, overlay other plots by "points"
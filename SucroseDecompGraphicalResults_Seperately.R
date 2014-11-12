#decomposition of sucrose, graphical results
#all flows plotted seperately
############################################
############################################
path <- "T:/Technik/Spektroskopie/UserData_p-mbe/IC 940 Professional Vaio/Project/Sugars/1stSucroseDecompConc.csv";
############################################ -> path of the file (csv)

decoD <- read.csv(path, header = T, sep=";")
############################################ -> read csv into decoD

par(mfrow=c(3,1))
plot(decoD$pNr, decoD$S, xlab = "Sample number", ylab = "Conc. in ppm", main = "Conc. flow sucrose", type = "b", col = "red")
plot(decoD$pNr, decoD$G, xlab = "Sample number", ylab = "Conc. in ppm", main = "Conc. flow glucose", type = "b", col = "blue")
plot(decoD$pNr, decoD$F, xlab = "Sample number", ylab = "Conc. in ppm", main = "Conc. flow fructose", type = "b", col = "green")
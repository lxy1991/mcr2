#plot, plot, plot, plot, plot...
#.eps, .png
############################################
############################################

postscript("LoadsPC1vsIndex.eps", horizontal = TRUE, onefile = FALSE, paper = "special", height = 8.26771654, width = 11.6929134)
plotLoadingsPCA(1,model=model)
dev.off()
png("LoadsPC1vsIndex.png", height = 2480, width = 3508, res = 300)
plotLoadingsPCA(1,model=model)
dev.off()
############################################ -> plot PC1 vs. Index

postscript("LoadsPC2vsIndex.eps", horizontal = TRUE, onefile = FALSE, paper = "special", height = 8.26771654, width = 11.6929134)
plotLoadingsPCA(2,model=model)
dev.off()
png("LoadsPC2vsIndex.png", height = 2480, width = 3508, res = 300)
plotLoadingsPCA(2,model=model)
dev.off()
############################################ -> plot PC2 vs. Index

postscript("LoadsPC3vsIndex.eps", horizontal = TRUE, onefile = FALSE, paper = "special", height = 8.26771654, width = 11.6929134)
plotLoadingsPCA(3,model=model)
dev.off()
png("LoadsPC3vsIndex.png", height = 2480, width = 3508, res = 300)
plotLoadingsPCA(3,model=model)
dev.off()
############################################ -> plot PC3 vs. Index

postscript("LoadsPC4vsIndex.eps", horizontal = TRUE, onefile = FALSE, paper = "special", height = 8.26771654, width = 11.6929134)
plotLoadingsPCA(4,model=model)
dev.off()
png("LoadsPC4vsIndex.png", height = 2480, width = 3508, res = 300)
plotLoadingsPCA(4,model=model)
dev.off()
############################################ -> plot PC4 vs. Index

postscript("LoadsPC5vsIndex.eps", horizontal = TRUE, onefile = FALSE, paper = "special", height = 8.26771654, width = 11.6929134)
plotLoadingsPCA(5,model=model)
dev.off()
png("LoadsPC5vsIndex.png", height = 2480, width = 3508, res = 300)
plotLoadingsPCA(5,model=model)
dev.off()
############################################ -> plot PC5 vs. Index

############################################ 
############################################ 
############################################ 

############################################ 
postscript("LoadsPC1vsPC2.eps", horizontal = TRUE, onefile = FALSE, paper = "special", height = 8.26771654, width = 11.6929134)
plotLoadingsPCA(1,2,model=model)
dev.off()
png("LoadsPC1vsPC2.png", height = 2480, width = 3508, res = 300)
plotLoadingsPCA(1,2,model=model)
dev.off()
############################################ -> plot PC1 vs. PC2

postscript("LoadsPC2vsPC3.eps", horizontal = TRUE, onefile = FALSE, paper = "special", height = 8.26771654, width = 11.6929134)
plotLoadingsPCA(2,3,model=model)
dev.off()
png("LoadsPC2vsPC3.png", height = 2480, width = 3508, res = 300)
plotLoadingsPCA(2,3,model=model)
dev.off()
############################################ -> plot PC2 vs. PC3

postscript("LoadsPC3vsPC4.eps", horizontal = TRUE, onefile = FALSE, paper = "special", height = 8.26771654, width = 11.6929134)
plotLoadingsPCA(3,4,model=model)
dev.off()
png("LoadsPC3vsPC4.png", height = 2480, width = 3508, res = 300)
plotLoadingsPCA(3,4,model=model)
dev.off()
############################################ -> plot PC3 vs. PC4

############################################ 
############################################ 
############################################ 

############################################ 

postscript("ScoresPC1vsIndex.eps", horizontal = TRUE, onefile = FALSE, paper = "special", height = 8.26771654, width = 11.6929134)
plotScoresPCA(1,model=model)
dev.off()
png("ScoresPC1vsIndex.png", height = 2480, width = 3508, res = 300)
plotScoresPCA(1,model=model)
dev.off()
############################################ -> plot PC1 vs. Index

postscript("ScoresPC2vsIndex.eps", horizontal = TRUE, onefile = FALSE, paper = "special", height = 8.26771654, width = 11.6929134)
plotScoresPCA(2,model=model)
dev.off()
png("ScoresPC2vsIndex.png", height = 2480, width = 3508, res = 300)
plotScoresPCA(2,model=model)
dev.off()
############################################ -> plot PC2 vs. Index

postscript("ScoresPC3vsIndex.eps", horizontal = TRUE, onefile = FALSE, paper = "special", height = 8.26771654, width = 11.6929134)
plotScoresPCA(3,model=model)
dev.off()
png("ScoresPC3vsIndex.png", height = 2480, width = 3508, res = 300)
plotScoresPCA(3,model=model)
dev.off()
############################################ -> plot PC3 vs. Index

postscript("ScoresPC4vsIndex.eps", horizontal = TRUE, onefile = FALSE, paper = "special", height = 8.26771654, width = 11.6929134)
plotScoresPCA(4,model=model)
dev.off()
png("ScoresPC4vsIndex.png", height = 2480, width = 3508, res = 300)
plotScoresPCA(4,model=model)
dev.off()
############################################ -> plot PC4 vs. Index

postscript("ScoresPC5vsIndex.eps", horizontal = TRUE, onefile = FALSE, paper = "special", height = 8.26771654, width = 11.6929134)
plotScoresPCA(5,model=model)
dev.off()
png("ScoresPC5vsIndex.png", height = 2480, width = 3508, res = 300)
plotScoresPCA(5,model=model)
dev.off()
############################################ -> plot PC5 vs. Index

############################################ 
############################################ 
############################################ 

############################################ 
postscript("ScoresPC1vsPC2.eps", horizontal = TRUE, onefile = FALSE, paper = "special", height = 8.26771654, width = 11.6929134)
plotScoresPCA(1,2,model=model)
dev.off()
png("ScoresPC1vsPC2.png", height = 2480, width = 3508, res = 300)
plotScoresPCA(1,2,model=model)
dev.off()
############################################ -> plot PC1 vs. PC2

postscript("ScoresPC2vsPC3.eps", horizontal = TRUE, onefile = FALSE, paper = "special", height = 8.26771654, width = 11.6929134)
plotScoresPCA(2,3,model=model)
dev.off()
png("ScoresPC2vsPC3.png", height = 2480, width = 3508, res = 300)
plotScoresPCA(2,3,model=model)
dev.off()
############################################ -> plot PC2 vs. PC3

postscript("ScoresPC3vsPC4.eps", horizontal = TRUE, onefile = FALSE, paper = "special", height = 8.26771654, width = 11.6929134)
plotScoresPCA(3,4,model=model)
dev.off()
png("ScoresPC3vsPC4.png", height = 2480, width = 3508, res = 300)
plotScoresPCA(3,4,model=model)
dev.off()
############################################ -> plot PC3 vs. PC4

############################################ 
############################################ 
############################################ 

############################################ 
postscript("Screeplot.eps", horizontal = TRUE, onefile = FALSE, paper = "special", height = 8.26771654, width = 11.6929134)
plot(model, type = "l", main = "Screeplot")
png("Screeplot.png", height = 2480, width = 3508, res = 300)
plot(model, type = "l", main = "Screeplot")
dev.off()
dev.off()
dev.off()
dev.off()
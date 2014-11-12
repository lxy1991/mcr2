Pfad <- "T:/Technik/Spektroskopie/UserData_p-mbe/IC 940 Professional Vaio/Project/Sugars/1-CalibrationGlucose.csv"; 	#path in which the csv with x and y values are
calDat <- read.csv(Pfad,header=TRUE,sep=";");								#reading out the x and y values from the csv file


dataf = data.frame(calDat$x,calDat$y);											#put x and y into data frame dataf
names(dataf) = c("x","y");

												

fit <- lm(y ~ -1 + x, data = dataf);														  #linear least square regression

newx <- seq(min(dataf$x), max(dataf$x), length.out=100)			#conf. interval
preds <- predict(fit, newdata = data.frame(x=newx), 
                 interval = 'confidence')

plot(y ~ x, data = dataf, type = 'n', main="Calibration curve and confidence interval for Glucose", xlab="Conc. in ppm", ylab="Peakarea", axes=FALSE)
axis(1, pos=0)
axis(2, pos=0)

polygon(c(rev(newx), newx), c(rev(preds[ ,3]), preds[ ,2]), col = 'grey80', border = NA)

abline(fit, h=0, v=0)                                       #model

lines(newx, preds[ ,3], lty = 'dashed', col = 'red')        #intervals
lines(newx, preds[ ,2], lty = 'dashed', col = 'red')
points(y ~ x, data = dataf) 
#plot(dataf);																	              #plot regression curve
#summary(fit);																            	#print out all data belonging to the regression

text(70,2000, paste("y = ", round(fit$coeff[1],2),"* x   R = ",round(cor(calDat$x,calDat$y),5)));
confint(fit)

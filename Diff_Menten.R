diffM = 0;
i=1;
for(i in 1:23){
  S1 <- dat[i,"S"]
  S2 <- dat[i+1,"S"]
  diff = S1 - S2;
  diffM <- c(diffM, diff)
}
diffM  <- as.matrix(diffM)
diffM <- diffM[-1,]
diffM  <- as.matrix(diffM)
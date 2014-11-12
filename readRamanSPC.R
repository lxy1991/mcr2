library(hyperSpec)

spc = data.frame()
max = vector()
i = 1;
j = 0;
#col <- brewer.pal(11, "Spectral");
col <- matlab.palette(7);
#col <- brewer.pal(5, "Set1")

path <- file.choose()
spctmp <- read.spc(path, keys.hdr2data = F, keys.hdr2log = F, keys.log2data = F, keys.log2log = F, 
                   log.txt = F, log.bin = F, log.disk = F, hdr = list(), no.object = F);
spc[i, i] <- spctmp$spc;
max[i] = max(spc[, i])
#matplot(t(spc[, i]), type = "l", xlab = "Wavenumers [1/cm]", ylab = "Intensity", col = col[i]);
#ymax = max(spc[i]);

while(max[i] != 'NA')
  {
    i = i + 1;
    path <- file.choose()
    spctmp <- read.spc(path, keys.hdr2data = F, keys.hdr2log = F, keys.log2data = F, keys.log2log = F, 
                       log.txt = F, log.bin = F, log.disk = F, hdr = list(), no.object = F);
    spc[, i] <- spctmp$spc;
    max[i] = max(spc[, i])
}

max = max(max);

for(j in 1:i-1)
  {
  if(j > 0)
    {
      matplot(t(spc[, j + 1]), type = "l", add = T, col = col[j + 1], lwd = 2)
  }
    else
      {
        matplot(t(spc[, j + 1]), ylim = c(0, max), type = "l", col = col[j + 1], xlab = "Wavenumbers [1/cm]", ylab = "Intensity", lwd = 2)
    }
}
#ymax2 = max(spc) + 1

#while(T)
#  {
#    i = i + 1;
    #ymax = ymax2;
#    path2 <- file.choose();
#    spc[i] <- read.spc(path2, keys.hdr2data = F, keys.hdr2log = F, keys.log2data = F, keys.log2log = F, 
#                    log.txt = F, log.bin = F, log.disk = F, hdr = list(), no.object = F);
#    spc[i] <- spc[i]$spc;
#    ymax2 = max(spc[i]);
#    if(ymax2 > ymax)
#      {
#      matplot(t(spc[i]), add = T, ylim = c(0, ymax2), type = "l", col = col[i]);
#      
#      }
#    else
#      {
#        matplot(t(spc[i]), add = T, type = "l", col = col[i]);
#      }
    #ymax = ymax2
    #i = i + 1;
    #path = 0
#  }

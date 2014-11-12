#load data which is located in the same directory as this script
datFileName = '2-CalibrationGalactose.csv';

script.dir <- dirname(sys.frame(1)$ofile); #directory path
fs  <- .Platform$file.sep; # System file separator
data.path  <-  paste(script.dir, fs, datFileName, sep=""); #full path of data

test.data <- read.csv2(data.path, skip=0, header= TRUE, sep =";", na.strings="NA", dec="."); #load data


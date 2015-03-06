
library(lubridate)
##Creating data directory  if not present
if(!file.exists("./Power_data")){dir.create("./Power_data")}

##downloading the zipped file and unzipping it
fileurl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fileurl,destfile="./Power_data/Power_Consumption.zip",method="curl")
unzip(zipfile="./Power_data/Power_Consumption.zip",exdir="./Power_data",overwrite=TRUE)
fpath <- "./Power_data"

Power.Consumption=read.table(file.path(fpath,'household_power_consumption.txt'),header=TRUE,sep=';',na.strings='?',colClasses=c(rep('character',2),rep('numeric',7)))
Power.Consumption=Power.Consumption[Power.Consumption$Date=='1/2/2007' | Power.Consumption$Date=='2/2/2007',]
Power.Consumption$Datetime=dmy(Power.Consumption$Date)+hms(Power.Consumption$Time)
Power.Consumption$Datetime=as.POSIXlt(Power.Consumption$Datetime)



source("PowerFileRead.R")
png(filename='plot2.png',width=480,height=480,units='px')
plot(Power.Consumption$Datetime,Power.Consumption$Global_active_power,xlab="",ylab="Global Active Power (kilowatts)", type="l")
dev.off()
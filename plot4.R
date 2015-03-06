source("PowerFileRead.R")
png(filename='plot4.png',width=480,height=480,units='px')
par(mfrow=c(2,2))
plot(Power.Consumption$Datetime,Power.Consumption$Global_active_power,xlab="",ylab="Global Active Power", type="l")
plot(Power.Consumption$Datetime,Power.Consumption$Voltage,xlab="datetime",ylab="Voltage", type="l")
plot(Power.Consumption$Datetime,Power.Consumption$Sub_metering_1,xlab="",ylab="Energy sub metering", col="black",type="l")
lines(Power.Consumption$Datetime,Power.Consumption$Sub_metering_2,col="red")
lines(Power.Consumption$Datetime,Power.Consumption$Sub_metering_3,col="blue")
legend("topright",lty=1,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

plot(Power.Consumption$Datetime,Power.Consumption$Global_reactive_power,xlab="datetime",ylab="Global_reactive_power", type="l")

dev.off()
          


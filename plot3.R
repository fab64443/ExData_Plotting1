
# read the data and filter the two days we need 

rdata = read.csv2("household_power_consumption.txt",na.strings = "?",dec=".", quote="", colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
data = subset(rdata,rdata$Date %in% c("1/2/2007","2/2/2007"))
remove(rdata)

# construct the plot

png("plot3.png")
plot(data$Sub_metering_1,type="l",ylab="Energy sub metering",xaxt="n",xlab="")
lines(data$Sub_metering_2,type="l",col="chocolate1")
lines(data$Sub_metering_3,type="l",col="blue")
axis(1, at=c(1,1440,2880), lab=c("Thu","Fri","Sat"))
legend("topright",c("Sub_metering_1","Sub_metering_3","Sub_metering_3"),col=c("black","chocolate1","blue"),lty=1, lwd=2)
dev.off()

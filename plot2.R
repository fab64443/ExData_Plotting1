
# read the data and filter the two days we need 

rdata = read.csv2("household_power_consumption.txt",na.strings = "?",dec=".", quote="", colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
data = subset(rdata,rdata$Date %in% c("1/2/2007","2/2/2007"))
remove(rdata)

# construct the plot

png("plot2.png")
plot(data$Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xaxt="n",xlab="")
axis(1, at=c(1,1440,2880), lab=c("Thu","Fri","Sat"))
dev.off()

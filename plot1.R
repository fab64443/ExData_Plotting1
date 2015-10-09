
# read the data and filter the two days we need 

rdata = read.csv2("household_power_consumption.txt",na.strings = "?",dec=".", quote="", colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
data = subset(rdata,rdata$Date %in% c("1/2/2007","2/2/2007"))
remove(rdata)

# construct the plot

png("plot1.png")
hist(data$Global_active_power,main="Global Active Power",xlab="Global Active Power (kilowatts)",col="chocolate1")
dev.off()


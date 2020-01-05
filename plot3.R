# Script to create plot3 for the assignment

#Read data
power_data <- read.csv("household_power_consumption.txt", header=TRUE,sep=";",na.strings="?")
hh_power_feb <- subset(power_data,Date=="1/2/2007" | Date =="2/2/2007")
remove(power_data)
hh_power_feb$Date <- as.Date(hh_power_feb$Date,format="%d/%m/%Y")
hh_power_feb$DateTime <- as.POSIXct(paste(hh_power_feb$Date,hh_power_feb$Time))

#Create the plot
png("plot3.png")

plot(hh_power_feb$Sub_metering_1~hh_power_feb$DateTime, type="n", ylab="Energy sub metering", xlab="")
points(hh_power_feb$Sub_metering_1~hh_power_feb$DateTime,type="l")
points(hh_power_feb$Sub_metering_2~hh_power_feb$DateTime,type="l",col="red")
points(hh_power_feb$Sub_metering_3~hh_power_feb$DateTime,type="l",col="blue")

legend('topright',col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1)

dev.off()
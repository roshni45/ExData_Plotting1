# Script to create plot2 for the assignment

#Read data
power_data <- read.csv("household_power_consumption.txt", header=TRUE,sep=";",na.strings="?")
hh_power_feb <- subset(power_data,Date=="1/2/2007" | Date =="2/2/2007")
remove(power_data)
hh_power_feb$Date <- as.Date(hh_power_feb$Date,format="%d/%m/%Y")
hh_power_feb$DateTime <- as.POSIXct(paste(hh_power_feb$Date,hh_power_feb$Time))

#Create the plot
png("plot2.png")
plot(hh_power_feb$Global_active_power~hh_power_feb$DateTime, type="l", ylab="Global Active Power (kilowatts)", xlab="")
dev.off()
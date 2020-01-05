# Script to create plot1 for the assignment

#Read data
power_data <- read.csv("household_power_consumption.txt", header=TRUE,sep=";",na.strings="?")
hh_power_feb <- subset(power_data,Date=="1/2/2007" | Date =="2/2/2007")
remove(power_data)

#Create the plot
png("plot1.png")
hist(hh_power_feb$Global_active_power,col="red",xlab="Global Active Power (kilowatts)",ylab="Frequency",main="Global Active Power")
dev.off()

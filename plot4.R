household_power_consumption <- read.csv("~/Coursera/exdata-data-household_power_consumption/household_power_consumption.txt", sep=";", na.strings="?")
d2<- subset(household_power_consumption, Date=="1/2/2007" | Date=="2/2/2007")   #get specific subset
d2[,1]<-data.frame(strptime(paste(d2[,1], d2[,2]), "%d/%m/%Y %H:%M:%S"))        #convertdata & time

#draw plot
png("plot4.png", width=480, heigh=480)
par(mfrow=c(2,2))   #Grid(2,2)

plot(d2$Date, d2$Global_active_power, type="l", ylab="Global Active Power", xlab="")  #plot1
plot(d2$Date, d2$Voltage, type="l", ylab="Voltage", xlab="datetime") #plot2

# plot3
plot(d2$Date, d2$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="")
lines(d2$Date, d2$Sub_metering_2, col="red")
lines(d2$Date, d2$Sub_metering_3, col="blue")
legend("topright", col=c("black", "red", "blue"), lty= c(1, 1, 1), legend= c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty="n")


plot(d2$Date, d2$Global_reactive_power, type="l", ylab="Global_reactive_power", xlab="datetime") # plot4

dev.off()

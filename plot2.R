household_power_consumption <- read.csv("~/Coursera/exdata-data-household_power_consumption/household_power_consumption.txt", sep=";", na.strings="?")
d2<- subset(household_power_consumption, Date=="1/2/2007" | Date=="2/2/2007")   #get specific subset
d2[,1]<-data.frame(strptime(paste(d2[,1], d2[,2]), "%d/%m/%Y %H:%M:%S"))        #convertdata & time

#draw plot
png("plot2.png", width=480, heigh=480)
plot(d2$Date, d2$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab="")
dev.off()


data <- read.table("household_power_consumption.txt", sep=";", as.is=TRUE, header=TRUE)
sub<-subset(data, data$Date == "1/2/2007" | data$Date == "2/2/2007")
days <- strptime(paste(sub$Date, sub$Time), format="%d/%m/%Y %H:%M:%S")
plot(days,sub$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")

dev.copy(png, file = "plot2.png", width = 480, height = 480, units = "px")
dev.off()
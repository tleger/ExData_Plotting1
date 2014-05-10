data <- read.table("household_power_consumption.txt", sep=";", as.is=TRUE, header=TRUE)
sub<-subset(data, data$Date == "1/2/2007" | data$Date == "2/2/2007")
days <- strptime(paste(sub$Date, sub$Time), format="%d/%m/%Y %H:%M:%S")


plot3a<- sub$Sub_metering_1
plot3b<-sub$Sub_metering_2
plot3c<-sub$Sub_metering_3

plot(days,plot3a,type="n",xlab="",ylab="Energy sub metering")
points(days, plot3a, type="l", col="black")
points(days, plot3b, type="l", col="red")
points(days, plot3c, type="l", col="blue")
legend("topright",lty=1,col=c("black","red","blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.copy(png, file = "plot3.png", width = 480, height = 480, units = "px")
dev.off()
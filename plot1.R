data <- read.table("household_power_consumption.txt", sep=";", as.is=TRUE, header=TRUE)

hist(as.numeric(sub$Global_active_power), main = "Global Active Power", xlab="Global Active Power (kilowatts)",ylab="Frequency",col="Red")

dev.copy(png, file = "plot1.png", width = 480, height = 480, units = "px")
dev.off()
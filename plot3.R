datos <- read.csv2("household_power_consumption.txt", na.strings="?")

DT <- subset (datos2, Date=="2007/02/01" | Date=="2007/02/02")

x <- strptime(paste(DT$Date, DT$Time), format="%Y-%m-%d %H:%M:%S")

y1 <- as.numeric(levels(DT$Sub_metering_1)[DT$Sub_metering_1])

y2 <- as.numeric(levels(DT$Sub_metering_2)[DT$Sub_metering_2])

y3 <- as.numeric(levels(DT$Sub_metering_3)[DT$Sub_metering_3])

png("plot3.png", width=480, height=480)

plot(x, y1, xlab="", ylab="Energy sub metering", type="l", col="black")

lines(x, y2, col="red")

lines(x, y3, col="blue")

legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty=c(1, 1, 1))

dev.off()
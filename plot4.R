datos <- read.csv2("household_power_consumption.txt", na.strings="?")

DT <- subset (datos2, Date=="2007/02/01" | Date=="2007/02/02")


png("plot4.png", width=480, height=480)

par(mfrow=c(2, 2))


# Plot1
x <- as.numeric(levels(DT$Global_active_power)[DT$Global_active_power])

hist(x, col="red", main="", xlab="")


#Plot2
x <- strptime(paste(DT$Date, DT$Time), format="%Y-%m-%d %H:%M:%S")
y <- as.numeric(levels(DT$Voltage)[DT$Voltage])

plot(x, y, xlab="datetime", ylab="Voltage", type="l")


#Plot3
y1 <- as.numeric(levels(DT$Sub_metering_1)[DT$Sub_metering_1])
y2 <- as.numeric(levels(DT$Sub_metering_2)[DT$Sub_metering_2])
y3 <- as.numeric(levels(DT$Sub_metering_3)[DT$Sub_metering_3])

plot(x, y1, xlab="", ylab="Energy sub metering", type="l", col="black")
lines(x, y2, col="red")
lines(x, y3, col="blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black", "red", "blue"), lty=c(1, 1, 1), bty="n")


#Plot4
y <- as.numeric(levels(DT$Global_reactive_power)[DT$Global_reactive_power])

plot(x, y, xlab="datetime", ylab="Global_reactive_power", type="l")


dev.off()
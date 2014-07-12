datos <- read.csv2("household_power_consumption.txt", na.strings="?")

DT <- subset (datos2, Date=="2007/02/01" | Date=="2007/02/02")

x <- strptime(paste(DT$Date, DT$Time), format="%Y-%m-%d %H:%M:%S")

y <- as.numeric(levels(DT$Global_active_power)[DT$Global_active_power])

png("plot2.png", width=480, height=480)

plot(x, y, xlab="", ylab="Global Active Power (kilowatts)", type="l")

dev.off()
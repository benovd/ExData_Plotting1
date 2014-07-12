datos <- read.csv2("household_power_consumption.txt", na.strings="?")

DT <- subset (datos2, Date=="2007/02/01" | Date=="2007/02/02")

x <- as.numeric(levels(DT$Global_active_power)[DT$Global_active_power])

png("plot1.png", width=480, height=480)

hist(x, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

dev.off()
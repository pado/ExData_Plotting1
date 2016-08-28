source("importdata.R")
fullRelevantData <- relevantData[!is.na(relevantData$Time),]

png("plot4.png", width=480, height=480)

par(mfrow=c(2,2))
# top left
plot(fullRelevantData$Time, fullRelevantData$Global_active_power, type="l", xlab = "", ylab = "Global Active Power (kilowatts)")

# top right
plot(fullRelevantData$Time, fullRelevantData$Voltage, type="l", xlab = "datetime", ylab = "Voltage")

# bottom left
plot(fullRelevantData$Time, fullRelevantData$Sub_metering_1, type="l", col="black",xlab="", ylab="Energy sub metering")
lines(fullRelevantData$Time, fullRelevantData$Sub_metering_2, col="red")
lines(fullRelevantData$Time, fullRelevantData$Sub_metering_3, col="blue")
legend("topright",col=c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1)

# bottom left
plot(fullRelevantData$Time, fullRelevantData$Global_active_power, type="l", xlab = "datetime", ylab = "Global Active Power (kilowatts)")
lines(fullRelevantData$Time, fullRelevantData$Global_reactive_power)
dev.off()
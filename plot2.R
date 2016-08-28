source("importdata.R")
fullRelevantData <- relevantData[!is.na(relevantData$Time),]

png("plot2.png", width=480, height=480)
plot(fullRelevantData$Time, fullRelevantData$Global_active_power, type="l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()
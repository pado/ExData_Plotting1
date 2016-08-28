##import data from source
data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

##extract the two relevant days we care about
relevantData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

relevantData$Time <- strptime(paste(relevantData$Date, relevantData$Time), "%d/%m/%Y %H:%M:%S")
relevantData$Date <- as.Date(relevantData$Date, "%d/%m/%Y")

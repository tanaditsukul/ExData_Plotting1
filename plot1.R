datfile <- "./household_power_consumption.txt"
data <- read.table(datfile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
datarange <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

Globalactpow <- as.numeric(subSetData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(Globalactpow, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
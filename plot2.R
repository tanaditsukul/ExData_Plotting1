datfile <- "./household_power_consumption.txt"
data <- read.table(datfile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
datarange <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(datarange$Date, datarange$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

Globalactpow <- as.numeric(datarange$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, Globalactpow, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
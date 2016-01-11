filePath <- "household_power_consumption.txt"
hpc <- read.table(filePath, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
dtHpc <- hpc[hpc$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(dtHpc$Date, dtHpc$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(dtHpc$Global_active_power)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")

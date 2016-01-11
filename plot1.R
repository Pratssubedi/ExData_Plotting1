filePath <- "household_power_consumption.txt"
hpc <- read.table(filePath, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
dtHpc <- hpc[hpc$Date %in% c("1/2/2007","2/2/2007") ,]
globalActivePower <- as.numeric(dtHpc$Global_active_power)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

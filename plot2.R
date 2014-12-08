data <- read.table(file = "data.csv", header = TRUE, sep = ";")
data[, "DateTime"] <- as.POSIXct(paste(data$Date,data$Time), format = "%d/%m/%Y %H:%M:%S")
plot(y = data[[3]], x = data$DateTime, xlab="",ylab = "Global Active Power (kilowatts)", type = "l")

dev.copy(png, file = "plot2.png", width = 480, height = 480)
dev.off()

data <- read.table(file = "data.csv", header = TRUE, sep = ";")
data[, "DateTime"] <- as.POSIXct(paste(data$Date,data$Time), format = "%d/%m/%Y %H:%M:%S")

plot(data[[7]], x = data$DateTime, xlab="",ylab = "Energy sub metering", type = "l", col = "black")
lines(data[[8]], x = data$DateTime, col = "red")
lines(data[[9]], x = data$DateTime, col = "blue")
legend("topright", lty = 1 , col = c("black","red","blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.copy(png, file = "plot3.png", width = 480, height = 480)
dev.off()

# Read data fields separated with semicolons
data <- read.table(file = "data.csv", header = TRUE, sep = ";", na.strings = "?")

# Create a datetime column
data[, "DateTime"] <- as.POSIXct(paste(data$Date,data$Time), format = "%d/%m/%Y %H:%M:%S")

# Open the png device
png(filename = "plot3.png", width = 480, height = 480, units = "px");

# Third Plot
plot(data[[7]], x = data$DateTime, xlab="",ylab = "Energy sub metering", type = "l", col = "black")
lines(data[[8]], x = data$DateTime, col = "red")
lines(data[[9]], x = data$DateTime, col = "blue")
legend("topright", lty = 1 , col = c("black","red","blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

# Close the device
dev.off()

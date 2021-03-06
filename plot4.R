# 2015/09/13

# Read data fields separated with semicolons
data <- read.table(file = "data.csv", header = TRUE, sep = ";", na.strings = "?")

# Create a datetime column
data[, "DateTime"] <- as.POSIXct(paste(data$Date,data$Time), format = "%d/%m/%Y %H:%M:%S")

# Open the png device
png(filename = "plot4.png", width = 480, height = 480, units = "px");

# Fourth Plot
par(mfrow = c(2,2))
plot(data[[3]], x = data$DateTime, xlab="", ylab = "Global Active Power", type = "l", col = "black")
plot(data[[5]], x = data$DateTime, xlab="datetime", ylab = "Voltage", type = "l", col = "black")
plot(data[[7]], x = data$DateTime, xlab="", ylab = "Energy sub metering", type = "l", col = "black")
lines(data[[8]], x = data$DateTime, col = "red")
lines(data[[9]], x = data$DateTime, col = "blue")
legend("topright", lty = 1 , col = c("black","red","blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
#plot(data$Global_reactive_power, x = data$DateTime, xlab="datetime", type = "l", col = "black")
# using a context called "data"
with(data, plot(Global_reactive_power, x = DateTime, xlab="datetime", type = "l", col = "black"))

# Close the device
dev.off()

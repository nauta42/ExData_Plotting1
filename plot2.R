# 2015/09/13

# Read data fields separated with semicolons
data <- read.table(file = "data.csv", header = TRUE, sep = ";", na.strings = "?")

# Create a datetime column
data[, "DateTime"] <- as.POSIXct(paste(data$Date,data$Time), format = "%d/%m/%Y %H:%M:%S")

# Open the png device
png(filename = "plot2.png", width = 480, height = 480, units = "px");

# Second plot
plot(y = data[[3]], x = data$DateTime, xlab="", ylab = "Global Active Power (kilowatts)", type = "l")

# Close the device
dev.off()

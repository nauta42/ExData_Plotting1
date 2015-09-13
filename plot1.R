# 2015/09/13

# Read data fields separated with semicolons
data <- read.table(file = "data.csv", header = TRUE, sep = ";", na.strings = "?")

# Create a datetime column
data[, "DateTime"] <- as.POSIXct(paste(data$Date,data$Time), format = "%d/%m/%Y %H:%M:%S")

# Open the png device
png(filename = "plot1.png", width = 480, height = 480, units = "px");

# First Plot
hist(data[[3]], col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

# Close the device
dev.off()

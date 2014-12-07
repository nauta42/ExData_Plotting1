data <- read.table(file = "data.csv", header = TRUE, sep = ";")
data[, 1] <- as.Date(x = data[, 1], format = "%d/%m/%Y")

hist(data[[3]], col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.copy(png, file = "plot1.png", width = 480, height = 480)
dev.off()

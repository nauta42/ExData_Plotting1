# 2015/09/13

# file names
dataUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
dataZip <- "household_power_consumption.zip"
dataTxt <- "household_power_consumption.txt"
dataOk <- "data.csv"

# download data from internet
download.file(url = dataUrl, method = "curl", destfile = dataZip)

# get data in text mode
unzip(zipfile = dataZip, exdir = ".")

# Create a new file for the data with the header line
system("head -n1 household_power_consumption.txt > data.csv")

# Append only data from the dates 2007-02-01 and 2007-02-02
system("grep '^[12]/2/2007' household_power_consumption.txt >> data.csv")

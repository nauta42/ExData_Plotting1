#!/bin/bash

# Create a new file for the data with the header line
head -n1 household_power_consumption.txt > data.csv

# Append only data from the dates 2007-02-01 and 2007-02-02
grep '^[12]/2/2007' household_power_consumption.txt >> data.csv

#!/bin/bash

head -n1 household_power_consumption.txt > data.csv
grep '^1/2/2007' household_power_consumption.txt >> data.csv
grep '^2/2/2007' household_power_consumption.txt >> data.csv


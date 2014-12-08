## Load the dataset from the source directory
## assume we are the location of the file in the working directory

library(sqldf) # I use sqldf package for reading the data

source("load_hsepwr.R")

png(file = "plot2.png", width = 480, height = 480, units = "px", bg = "transparent")

with(hsepwr, plot(DateTime, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power(kilowatts)"))

dev.off()


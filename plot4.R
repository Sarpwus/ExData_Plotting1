## Load the dataset from the source directory
## assume we are the location of the file in the working directory

library(sqldf) # I use sqldf package for reading the data

source("load_hsepwr.R")

png(file = "plot4.png", width = 480, height = 480, units = "px", bg = "transparent")

# create the window
par(mfrow = c(2, 2))

## Top left graph
with(hsepwr, plot(DateTime, Global_active_power, type = "l", xlab = "",
                  ylab = "Global Active Power"))

## Top right graph
with(hsepwr, plot(DateTime, Voltage, type = "l", xlab = "datetime", ylab = "Voltage"))

## Bottom left graph
with(hsepwr, plot(DateTime, Sub_metering_1, type = "l", col = "black", xlab = "",
                  ylab = "Energy sub metering"))

with(hsepwr, lines(DateTime, Sub_metering_2, col = "red"))
with(hsepwr, lines(DateTime, Sub_metering_3, col = "blue"))

## get rid off the border of lengend
legend("topright", 
       bty = "n",
       col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lwd = 1)

## Bottom right graph
with(hsepwr, plot(DateTime, Global_reactive_power, type = "l", col = "black",
                  xlab = "datetime", ylab = colnames(hsepwr[4])))


dev.off()
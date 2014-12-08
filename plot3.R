## Load the dataset from the source directory
## assume we are the location of the file in the working directory

library(sqldf) # I use sqldf package for reading the data

source("load_hsepwr.R")

png(file = "plot3.png", width = 480, height = 480, units = "px", bg = "transparent")

with(hsepwr, plot(DateTime, Sub_metering_1, type = "l", col = "black", xlab = "",
                  ylab = "Energy sub metering"))
with(hsepwr, lines(DateTime, Sub_metering_2, col = "red"))
with(hsepwr, lines(DateTime, Sub_metering_3, col = "blue"))
legend("topright", col = c("black", "red", "blue"), 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 1)

dev.off()
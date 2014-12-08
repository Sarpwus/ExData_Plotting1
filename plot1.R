## Load the dataset from the source directory
## assume we are the location of the file in the working directory

library(sqldf) # I use sqldf package for reading the data

source("load_hsepwr.R")

png(file = "plot1.png", width = 480, height = 480, units = "px", bg = "transparent")

hist(hsepwr$Global_active_power, col = "red", main = "Global Active Power",
     xlab = "Global Active Power(kilowatts)", breaks = 12,
     ylim = c(0, 1200))

dev.off()
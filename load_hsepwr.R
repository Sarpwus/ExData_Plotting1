
myFile <- file("household_power_consumption.txt")  

## select only observations needed  
hsepwr     <- sqldf('select * from myFile where Date = "1/2/2007" OR Date = "2/2/2007"',  
                dbname = tempfile(),  
                file.format = list(header = TRUE,   
                                   sep = ";",   
                                   eol = '\r\n'))   

## close connection  
sqldf()

attach(hsepwr)
x <- paste(Date, Time)
hsepwr$DateTime <- strptime(x, "%d/%m/%Y %H:%M:%S")
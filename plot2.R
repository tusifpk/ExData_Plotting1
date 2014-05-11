Sys.setlocale(locale = "C")
df <- read.table("../household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?",
                 colClasses = c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"))     
df2 <- subset(df, as.Date(Date, format='%d/%m/%Y') >= as.Date("01/02/2007",format='%d/%m/%Y') 
              & as.Date(Date,format='%d/%m/%Y') <= as.Date("02/02/2007",format='%d/%m/%Y'))

df2$DateTime <- strptime(paste(df2$Date, df2$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

plot(df2$DateTime, df2$Global_active_power, ylab="Global Active Power (kilowatts)", type="l", xlab="")

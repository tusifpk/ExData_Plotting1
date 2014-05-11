Sys.setlocale(locale = "C")
df <- read.table("../household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?",
                 colClasses = c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"))     
df2 <- subset(df, as.Date(Date, format='%d/%m/%Y') >= as.Date("01/02/2007",format='%d/%m/%Y') 
              & as.Date(Date,format='%d/%m/%Y') <= as.Date("02/02/2007",format='%d/%m/%Y'))
hist(df2$Global_active_power, xlab="Global Active Power (kilowatts)", col="red", main="Global Active Power")





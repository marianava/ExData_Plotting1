epc <- read.table("household_power_consumption.txt",header=T,na.strings="?",sep=";")
dh <- paste(as.character(epc$Date),as.character(epc$Time))
epc$date.time <- strptime(dh,"%d/%m/%Y %H:%M:%S")
epc$Date <- as.Date(epc$Date,format="%d/%m/%Y")
epc2 <- subset(epc,Date>"2007-01-31"&Date<"2007-02-03")
#plot2
plot(epc2$date.time,epc2$Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab="")

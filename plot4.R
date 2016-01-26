# plot 4 :
data <- read.table("~/household_power_consumption.txt", header=TRUE, sep=";",stringsAsFactors=FALSE)
data1 <- subset(data,Date=="1/2/2007"|Date=="2/2/2007")

data1$date1 <- as.Date(data1$Date,format="%d/%m/%Y")
data1$datetime <- paste(data1$date1,data1$Time,sep=" ")
data1$datetime <- as.POSIXct(data1$datetime)

png("plot4.png",width=480,height=480)
par(mfcol=c(2,2))
plot(data1$datetime, as.numeric(data1$Global_active_power), main="", xlab="", ylab= "Global Active Power", type="l")
plot(data1$datetime, as.numeric(data1$Sub_metering_1), main="",xlab="",ylab= "Energy sub metering",type="l")
lines(data1$datetime, as.numeric(data1$Sub_metering_2), type="l", col="red")
lines(data1$datetime, as.numeric(data1$Sub_metering_3), type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty=1)
plot(data1$datetime,data1$Voltage,main="",xlab="datetime",ylab="Voltage",type="l")
plot(data1$datetime,as.numeric(data1$Global_reactive_power),main="",xlab="datetime",ylab="Global_reactive_power",type="l")
dev.off()
# plot 3 :
data <- read.table("~/household_power_consumption.txt", header=TRUE, sep=";",stringsAsFactors=FALSE)
data1 <- subset(data,Date=="1/2/2007"|Date=="2/2/2007")

data1$date1 <- as.Date(data1$Date,format="%d/%m/%Y")
data1$datetime <- paste(data1$date1,data1$Time,sep=" ")
data1$datetime <- as.POSIXct(data1$datetime)

png("plot3.png",width=480,height=480)
plot(data1$datetime,as.numeric(data1$Sub_metering_1),main="",xlab="",ylab="Energy sub metering",type="l")
lines(data1$datetime,as.numeric(data1$Sub_metering_2),col="red")
lines(data1$datetime,as.numeric(data1$Sub_metering_3),col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"),lty=1)
dev.off()


# plot 2 :
data <- read.table("~/household_power_consumption.txt", header=TRUE, sep=";",stringsAsFactors=FALSE)
data1 <- subset(data,Date=="1/2/2007"|Date=="2/2/2007")

data1$date1 <- as.Date(data1$Date,format="%d/%m/%Y")
data1$datetime <- paste(data1$date1,data1$Time,sep=" ")
data1$datetime <- as.POSIXct(data1$datetime)

png("plot2.png",width=480,height=480)
plot(data1$datetime,as.numeric(data1$Global_active_power),main="",xlab="",ylab="Global Active Power (kilowatts)",type="l")
dev.off()

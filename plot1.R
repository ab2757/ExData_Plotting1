# plot 1 :

data <- read.table("~/household_power_consumption.txt", header=TRUE, sep=";",stringsAsFactors=FALSE)
data1 <- subset(data,Date=="1/2/2007"|Date=="2/2/2007")


png("plot1.png",width=480,height=480)
hist(as.numeric(data1$Global_active_power),main="Global Active Power",xlab="Global Active Power(kilowatts)",ylab="Frequency",col="red")
dev.off()
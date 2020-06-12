Data<-read.table("household_power_consumption.txt",header = TRUE,sep=";",colClass="character")
fData<-Data[Data$Date=="1/2/2007"| Data$Date=="2/2/2007",]
timeVector<-strptime(paste(fData$Date, fData$Time),"%d/%m/%Y %H:%M:%S")
png(filename = "plot3.png",width = 480, height = 480, units = "px",bg = "white")
plot(timeVector,as.numeric(reqData$Sub_metering_1),xlab=NA,ylab="energy sub metering",type="l")
legend("topright",c("sub metering 1", "sub metering2 ", "sub metering 3"), col = c("black", "blue", "red"), lty = 1)
points(timeVector,as.numeric(reqData$Sub_metering_2),type="l", col = "blue")
points(timeVector,as.numeric(reqData$Sub_metering_3),type="l", col = "red")
dev.off()

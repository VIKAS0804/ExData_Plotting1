Data<-read.table("household_power_consumption.txt",header = TRUE,sep=";",colClass="character")
fData<-Data[Data$Date=="1/2/2007"| Data$Date=="2/2/2007",]
timeVector<-strptime(paste(fData$Date, fData$Time),"%d/%m/%Y %H:%M:%S")
png(filename = "plot2.png",width = 480, height = 480, units = "px",bg = "white")
plot(timeVector,as.numeric(fData$Global_active_power),xlab=NA,ylab="Global Active Power (kilowatts)",type="l")
dev.off()

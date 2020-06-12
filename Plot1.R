Data<-read.table("household_power_consumption.txt",header=TRUE,sep=";",colClass="character")
finalData<-Data[Data$Date=="1/2/2007"| Data$Date=="2/2/2007",]
png(filename="Plot1.png",width=480,height=480,units="px",bg="blue")
hist(as.numeric(finalData$Global_active_power),xlab="global active power",ylab="freq",col="green",main="global active power")
dev.off()

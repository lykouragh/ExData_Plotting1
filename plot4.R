plot4<-function(){
     data<-read.table("household_power_consumption.txt", header=T, sep=";", stringsAsFactors=F)
     data<-data[data$Date=="1/2/2007"|data$Date=="2/2/2007",]
     date<-strptime(paste(data$Date," ",data$Time), "%d/%m/%Y %H:%M:%S")
     png(file="plot4.png")
     par(mfrow=c(2,2))
     hist(as.numeric(data$Global_active_power), col="red",main="Global Active Power", xlab="Global Active Power (kilowatts)",ylab="Frequency")
     plot(date,as.numeric(data$Sub_metering_1), type="l", ylab="Energy sub metering",xlab="Day")
     lines(date,as.numeric(data$Sub_metering_2),col="red")
     lines(date,as.numeric(data$Sub_metering_3),col="blue")
     legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty=c(1,1,1),lwd=c(2.5,2.5,2.5),col=c("black","blue","red"))
     plot(date,as.numeric(data$Voltage), type="l", ylab="Voltage",xlab="Day")
     plot(date,as.numeric(data$Global_reactive_power), type="l", ylab="Global Reactive Power (kilowatts)",xlab="Day")
     dev.off()

}
plot2<-function(){
     data<-read.table("household_power_consumption.txt", header=T, sep=";", stringsAsFactors=F)
     data<-data[data$Date=="1/2/2007"|data$Date=="2/2/2007",]
     date<-strptime(paste(data$Date," ",data$Time), "%d/%m/%Y %H:%M:%S")
     png(file="plot2.png")
     plot(date,as.numeric(data$Global_active_power), type="l", ylab="Global Active Power (kilowatts)",xlab="Day")
     dev.off()

}
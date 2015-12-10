plot1<-function(){
     data<-read.table("household_power_consumption.txt", header=T, sep=";", stringsAsFactors=F)
     data$Date<-as.Date(data$Date, "%d/%m/%Y")
     data<-data[data$Date=="2007-02-01"|data$Date=="2007-02-02",]
     png(file="plot1.png")
     hist(as.numeric(data$Global_active_power), col="red",main="Global Active Power", xlab="Global Active Power (kilowatts)",ylab="Frequency")
     dev.off()

}
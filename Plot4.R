cons <- read.table("~/Desktop/household_power_consumption.txt",sep=";",na.strings="?",
                   header=TRUE,stringsAsFactors=FALSE)
consfeb <- cons[cons$Date %in% c("1/2/2007","2/2/2007"),]
consfeb$daytime<-strptime(paste(consfeb$Date,consfeb$Time,sep=" "), 
                          "%d/%m/%Y %H:%M:%S")

#plot 4
png("plot4.png",width=480,height=480)
par(mfrow=c(2,2))
with(consfeb,{
  plot(daytime,Global_active_power,xlab="",ylab="Global Active Power",type="l")
  plot(daytime,Voltage,xlab="datetime",ylab="Voltage",type="l")
  with(consfeb,{
    plot(daytime,Sub_metering_1,,xlab="",ylab="Energy sub metering",
         main="",type="l")
    lines(consfeb$daytime,consfeb$Sub_metering_2,col="red",type="l")
    lines(consfeb$daytime,consfeb$Sub_metering_3,col="blue",type="l")
    legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
           lty="solid",col=c("black","red","blue"))
  })
  plot(daytime,Global_reactive_power,xlab="datetime",type="l")
}
)
dev.off()
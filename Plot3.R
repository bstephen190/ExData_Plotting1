cons <- read.table("~/Desktop/household_power_consumption.txt",sep=";",na.strings="?",
                   header=TRUE,stringsAsFactors=FALSE)
consfeb <- cons[cons$Date %in% c("1/2/2007","2/2/2007"),]
consfeb$daytime<-strptime(paste(consfeb$Date,consfeb$Time,sep=" "), 
                          "%d/%m/%Y %H:%M:%S")

#plot 3
png("plot3.png",width=480,height=480)
with(consfeb,plot(daytime,Sub_metering_1,,xlab="",ylab="Energy sub metering",
                  main="",type="l"))
#add the other submeterings
lines(consfeb$daytime,consfeb$Sub_metering_2,col="red",type="l")
lines(consfeb$daytime,consfeb$Sub_metering_3,col="blue",type="l")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty="solid",col=c("black","red","blue"))
dev.off()
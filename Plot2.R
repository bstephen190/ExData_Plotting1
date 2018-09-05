cons <- read.table("~/Desktop/household_power_consumption.txt",sep=";",na.strings="?",
                   header=TRUE,stringsAsFactors=FALSE)
consfeb <- cons[cons$Date %in% c("1/2/2007","2/2/2007"),]
consfeb$daytime<-strptime(paste(consfeb$Date,consfeb$Time,sep=" "), 
                          "%d/%m/%Y %H:%M:%S")

#plot2
png("plot2.png",width=480,height=480)
with(consfeb,plot(daytime,Global_active_power,xlab="",ylab="Global Active Power (kilowatts)",
                  main="",type="l"))
dev.off()
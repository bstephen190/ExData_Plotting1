cons <- read.table("~/Desktop/household_power_consumption.txt",sep=";",na.strings="?",
                   header=TRUE,stringsAsFactors=FALSE)
consfeb <- cons[cons$Date %in% c("1/2/2007","2/2/2007"),]


#plot1
hist(cons$Global_active_power,xlab="Global active power (kilowatts)",main="Global Active Power",
     col="red")   
png("plot1.png",width=480,height=480)
dev.off()
data<-read.table("//amwins/chi$/chiuser$/moriamic/Desktop/Coursera/Exploratory Data Analysis/HW1/household_power_consumption.txt",header=TRUE,sep = ";")

data$DateTime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
sub <- subset(data, as.Date(DateTime) >= as.Date("2007-02-01") & as.Date(DateTime) <= as.Date("2007-02-02"))

png('plot3.png')
plot(sub$DateTime,sub$Sub_metering_1,pch=NA,xlab="",ylab="Energy sub metering")
lines(sub$DateTime, sub$Sub_metering_1)
lines(sub$DateTime, sub$Sub_metering_2, col='red')
lines(sub$DateTime, sub$Sub_metering_3, col='blue')
legend('topright',c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lty = c(1,1,1),col = c('black', 'red', 'blue'))
dev.off()
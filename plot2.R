data<-read.table("//amwins/chi$/chiuser$/moriamic/Desktop/Coursera/Exploratory Data Analysis/HW1/household_power_consumption.txt",header=TRUE,sep = ";")

data$DateTime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
sub <- subset(data, as.Date(DateTime) >= as.Date("2007-02-01") & as.Date(DateTime) <= as.Date("2007-02-02"))

png('plot2.png')
plot(sub$DateTime,sub$Global_active_power,ylab="Global Active Power (kilowatts)",pch=NA,xlab="")
lines(sub$DateTime, sub$Global_active_power)
dev.off()
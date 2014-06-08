data<-read.table("//amwins/chi$/chiuser$/moriamic/Desktop/Coursera/Exploratory Data Analysis/HW1/household_power_consumption.txt",header=TRUE,sep = ";",colClasses = c('character', 'character','numeric', 'numeric', 'numeric', 'numeric', 'numeric','numeric', 'numeric'), na.strings='?')

data$DateTime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
sub <- subset(data, as.Date(DateTime) >= as.Date("2007-02-01") & as.Date(DateTime) <= as.Date("2007-02-02"))

png('plot1.png')
hist(sub$Global_active_power,main="Global Active Power",xlab="Global Active Power (kilowatts)",col='red')
dev.off()
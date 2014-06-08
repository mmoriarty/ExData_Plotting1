data<-read.table("//amwins/chi$/chiuser$/moriamic/Desktop/Coursera/Exploratory Data Analysis/HW1/household_power_consumption.txt",header=TRUE,sep = ";")

sub <- subset(data, as.Date(Date) >="02/01/2007" & as.Date(Date) <="02/02/2007" & !is.na(Global_active_power))

gph<-as.numeric(as.character(sub$Global_active_power))

jpeg('plot1.jpg')
hist(gph,main="Global Active Power",xlab="Global Active Power (kilowatts)",col='red')
dev.off()
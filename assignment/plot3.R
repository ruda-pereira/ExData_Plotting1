setwd("D:/Documents/datascience/data/exdata-data-household_power_consumption")

hpc <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
hpc <- hpc[66637:69516,]
hpc[,2] <- paste(hpc[,1],hpc[,2])
hpc$Time <- strptime(hpc$Time,"%d/%m/%Y%X")

setwd("D:/Documents/datascience/exploratory1")
png(filename = "plot3.png",width = 480, height = 480)
plot(hpc$Time,hpc$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")
points(hpc$Time,hpc$Sub_metering_2,col="red",type="l")
points(hpc$Time,hpc$Sub_metering_3,col="blue",type="l")
legend(x="topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd=1,col=c("black","red","blue"))
dev.off()

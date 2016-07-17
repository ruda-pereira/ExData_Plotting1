setwd("D:/Documents/datascience/data/exdata-data-household_power_consumption")

hpc <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
hpc <- hpc[66637:69516,]
hpc[,2] <- paste(hpc[,1],hpc[,2])
hpc$Time <- strptime(hpc$Time,"%d/%m/%Y%X")

setwd("D:/Documents/datascience/exploratory1")
png(filename = "plot2.png",width = 480, height = 480)
plot(hpc$Time,hpc$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")
dev.off()

setwd("D:/Documents/datascience/data/exdata-data-household_power_consumption")

hpc <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
hpc <- hpc[66637:69516,]
hpc[,2] <- paste(hpc[,1],hpc[,2])
hpc$Time <- strptime(hpc$Time,"%d/%m/%Y%X")

setwd("D:/Documents/datascience/exploratory1")
png(filename = "plot1.png",width = 480, height = 480)
hist(hpc$Global_active_power,main="Global Active Power",xlab="Global Active Power (kilowatts)",col="red")
dev.off()

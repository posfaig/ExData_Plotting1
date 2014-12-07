#plot3
 dataset <- read.csv(file="household_power_consumption.txt",sep=";", na.strings=c("?"), colClasses=c("character","character",rep("numeric",7)))
dataset <- dataset[dataset$Date=="1/2/2007" | dataset$Date=="2/2/2007",]

dataset$DateAsDate <- strptime(paste(dataset$Date,dataset$Time),format="%d/%m/%Y %H:%M:%S")
Sys.setlocale(category = "LC_ALL", locale = "C")

png(filename="figure/plot3.png", width=480, height=480)
plot(dataset$DateAsDate, dataset$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="", col="black")
lines(dataset$DateAsDate, dataset$Sub_metering_2, col="red")
lines(dataset$DateAsDate, dataset$Sub_metering_3, col="blue")
legend(x="topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"), lty="solid")
dev.off()


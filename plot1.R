#plot1
 dataset <- read.csv(file="household_power_consumption.txt",sep=";", na.strings=c("?"), colClasses=c("character","character",rep("numeric",7)))
dataset <- dataset[dataset$Date=="1/2/2007" | dataset$Date=="2/2/2007",]

png(filename="figure/plot1.png", width=480, height=480)
hist(dataset$Global_active_power,col="red",main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()


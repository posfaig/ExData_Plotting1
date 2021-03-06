#plot2
 dataset <- read.csv(file="household_power_consumption.txt",sep=";", na.strings=c("?"), colClasses=c("character","character",rep("numeric",7)))
dataset <- dataset[dataset$Date=="1/2/2007" | dataset$Date=="2/2/2007",]

dataset$DateAsDate <- strptime(paste(dataset$Date,dataset$Time),format="%d/%m/%Y %H:%M:%S")
Sys.setlocale(category = "LC_ALL", locale = "C")

png(filename="figure/plot2.png", width=480, height=480)
plot(dataset$DateAsDate, dataset$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab="")
dev.off()


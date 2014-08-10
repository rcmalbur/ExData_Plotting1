## Create Plot3.png

# Read only the data needed
data <- read.table("household_power_consumption.txt", header=F, sep=";", na.strings="?", skip=66637, nrows=2880)

# Date and Time merging and conversion
data$V1 <- strptime(paste(data$V1,data$V2), "%d/%m/%Y %H:%M:%S")

# Plotting and png writing
png(file = "plot3.png", width = 480, height = 480)
par(mar=c(4,4,2,2))
plot(data$V1, data$V7, ylab="Energy sub metering", xlab=NA, type = "l")
lines(data$V1, data$V8, type = "l", col="red")
lines(data$V1, data$V9, type = "l", col="blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty = 1)
dev.off()
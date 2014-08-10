## Create Plot2.png

# Read only the data needed
data <- read.table("household_power_consumption.txt", header=F, sep=";", na.strings="?", skip=66637, nrows=2880)

# Date and Time merging and conversion
data$V1 <- strptime(paste(data$V1,data$V2), "%d/%m/%Y %H:%M:%S")

# Plotting and png writing
png(file = "plot2.png", width = 480, height = 480)
par(mar=c(4,4,2,2))
plot(data$V1, data$V3, ylab="Global Active Power (kilowatts)", xlab=NA, type = "l")
dev.off()
with(PowerData, plot(Time, Sub_metering_1, 
                     ylab="Energy sub metering", xlab="", type="l", col="black"))
points(PowerData$Time, PowerData$Sub_metering_2, col="red", type="l")
points(PowerData$Time, PowerData$Sub_metering_3, col="blue", type="l")

legend("topright", lwd=1, col=c("black", "red", "blue"), legend = names(PowerData[,7:9]))

dev.copy(png, file = "plot3.png")
dev.off() 
par(mfcol=c(2,2))

# Plot 4.1
with(PowerData, plot(Time, Global_active_power, 
                     ylab="Global Active Power (kilowatts)", xlab="", pch =".", type="l"))
     
# Plot 4.2 (bottom left)
with(PowerData, plot(Time, Sub_metering_1, 
                     ylab="Energy sub metering", xlab="", type="l", col="black"))
points(PowerData$Time, PowerData$Sub_metering_2, col="red", type="l")
points(PowerData$Time, PowerData$Sub_metering_3, col="blue", type="l")

legend("topright", lwd=1, col=c("black", "red", "blue"), 
       legend = names(PowerData[,7:9]), bty="n")

# Plot 4.3
with(PowerData, plot(Time, Voltage, 
                     ylab="Voltage", xlab="datetime", type="l"))

# Plot 4.4
with(PowerData, plot(Time, Global_reactive_power, 
                     ylab="Global_reactive_power", xlab="datetime", type="l"))
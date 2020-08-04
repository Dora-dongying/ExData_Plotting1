with(PowerData, plot(Time, Global_active_power, 
                     ylab="Global Active Power (kilowatts)", 
                     xlab="", pch =".", type="l"))

dev.copy(png, file = "plot2.png")
dev.off() 
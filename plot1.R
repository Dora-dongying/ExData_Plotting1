with(PowerData, hist(as.numeric(Global_active_power), 
                     col = "red", main = "Global Active power", 
                     xlab = "Global Active Power (kilowatts)"))

dev.copy(png, file = "plot1.png")
dev.off() 
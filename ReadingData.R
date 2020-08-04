## Download the ZIP file and then unzip it. Check if the files exist before processing.
zipname <- "ElectricPowerConsumption.zip"
fileURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
if (!file.exists(zipname)){
    download.file(fileURL, zipname, method = "curl")
}
filename <- "Dataset"
if (!file.exists(filename)){
    unzip(zipname)
}

## First calculate a rough estimate of how much memory the dataset will require 
## in memory before reading into R. 

## Rough calculation: memory required = no. of column * no. of rows * 8 bytes/numeric
##                                    = 9 * 2075259 * 8 bytes
estimated_memory <- 9 * 2075259 * 8 /1024 /1024 ## in MB

## Read the data into R as data.frames
PowerData_all <- read.table("household_power_consumption.txt", sep = ";", header = TRUE)
## Estimate the real size
library(pryr)
real_memory <- object_size(PowerData_all) /1024 /1024 ## in MB
## Subseting the data
PowerData <- subset(PowerData_all, Date == "1/2/2007" | Date == "2/2/2007")

## Convert date and time into format
PowerData$Date <- as.Date(PowerData$Date, format = "%d/%m/%Y")
PowerData$Time <- strptime(paste(PowerData$Date, PowerData$Time),"%F %T")
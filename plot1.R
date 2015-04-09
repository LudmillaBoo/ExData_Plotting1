## Code for reading the data

filename <- "./exdata_data_household_power_consumption/household_power_consumption.txt"
data<- read.table(filename, sep=";", header=T, quote= "", strip.white=TRUE, stringsAsFactors = F, na.strings= "?")

## Subset the needed data
data<- subset(data, (data$Date == "1/2/2007" | data$Date== "2/2/2007")) 

## Creating the plot and saving as png file
png("plot1.png", width=480, height= 480)
hist(data$Global_active_power, col= "red", xlab= "Global Active Power (kilowatts)", main= "Global Active Power")
dev.off()


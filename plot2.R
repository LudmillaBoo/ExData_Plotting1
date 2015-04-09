## Code for reading the data

filename <- "./exdata_data_household_power_consumption/household_power_consumption.txt"
data<- read.table(filename, sep=";", header=T, quote= "", strip.white=TRUE, stringsAsFactors = F, na.strings= "?")

## Subset the needed data
data<- subset(data, (data$Date == "1/2/2007" | data$Date== "2/2/2007")) 

# Convert date and time variables into Time/ Date classes
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
data$DateTime <- as.POSIXct(paste(data$Date, data$Time))

## Creating the plot and saving as png file
png("plot2.png", width=480, height= 480)
plot(data$DateTime, data$Global_active_power, type= "l", lwd=1, ylab= "Global Active Power (kilowatts)", xlab="")
dev.off()
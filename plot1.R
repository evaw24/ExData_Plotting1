#	Create plot 1 using ds_filter data set

hist(ds_filter$Global_active_power, col="red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")

#	Copy png to current working directory

dev.copy(png, file="plot1.png", height = 480, width = 480)

#	Close device connection          
dev.off()
 

#	Create plot 1 using ds_filter data set

plot(ds_filter$datetime,ds_filter$Global_active_power, xlab="", ylab="Global Active Power (kilowatts)", type = "l")

#	Copy png to current working directory

dev.copy(png, file="plot2.png", height = 480, width = 480)

#	Close device connection          
dev.off()
 
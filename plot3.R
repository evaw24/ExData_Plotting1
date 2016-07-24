#	Create plot 3 using ds_filter data set

#  Plot Sub_metering_1

with(ds_filter, plot(datetime,Sub_metering_1, xlab="", ylab="Energy sub metering", type = "l", col = "black"))

#	Add Sub_metering_2

with(ds_filter, lines(datetime,Sub_metering_2, type="l", col = "red"))

#	Add Sub_metering_3

with(ds_filter, lines(datetime,Sub_metering_3, type="l", col = "blue"))

legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"), lty=c(1,1))

#	Copy png to current working directory

dev.copy(png, file="plot3.png", height = 480, width = 480)

#	Close device connection          
dev.off()
 
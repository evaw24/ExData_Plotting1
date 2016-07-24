#	Create plot 4 using ds_filter data set

#  Set plots frame

par(mfrow=c(2,2))

#  1'st Plot

with(ds_filter,plot(datetime,Global_active_power, xlab="", ylab="Global Active Power", type = "l"))

#	2'nd Plot

with(ds_filter,plot(datetime,Voltage, xlab="datetime", ylab="Voltage", type = "l"))

#	3'rd Plot

with(ds_filter, plot(datetime,Sub_metering_1, xlab="", ylab="Energy sub metering", type = "l", col = "black"))
with(ds_filter, lines(datetime,Sub_metering_2, type="l", col = "red"))
with(ds_filter, lines(datetime,Sub_metering_3, type="l", col = "blue"))
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"), lty=c(1,1), bty="n")

#	4'th Plot

with(ds_filter, plot(datetime,Global_reactive_power, xlab="datetime", ylab="Global_reactive_power", type = "l", col = "black"))

# 	Add legend 

legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"), lty=c(1,1), bty="n")

#	Copy png to current working directory

dev.copy(png, file="plot4.png", height = 480, width = 480)

#	Close device connection          
dev.off()
 
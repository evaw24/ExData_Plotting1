#	Load Data Set

ds <- read.table("household_power_consumption.txt", sep=";", na.strings=c("?"), stringsAsFactors=F, header=TRUE)

#	Filter Data for 2 days 2/2/2007 and 1/2/2007

ds.Date <- as.character(ds$Date)

ds_filter <- ds[(ds$Date %in% "1/2/2007") | ( ds$Date %in% "2/2/2007"),]

head(ds_filter)

##          Date     Time Global_active_power Global_reactive_power Voltage Global_intensity Sub_metering_1 #Sub_metering_2 Sub_metering_3
##66637 1/2/2007 00:00:00               0.326                 0.128  243.15              1.4              0              #0              0
##66638 1/2/2007 00:01:00               0.326                 0.130  243.32              1.4              0              #0              0

# Format ds$Date and ds$Time columns to data and time format as new column/variable 'datetime'

ds_filter$datetime <- with(ds_filter, as.POSIXct(paste(Date, Time), format="%d/%m/%Y %H:%M:%S"))

head(ds_filter)

##          Date     Time Global_active_power Global_reactive_power Voltage Global_intensity Sub_metering_1 Sub_metering_2 Sub_metering_3            datetime
##66637 1/2/2007 00:00:00               0.326                 0.128  243.15              1.4              0              0              0 2007-02-01 00:00:00
##66638 1/2/2007 00:01:00               0.326                 0.130  243.32              1.4              0              0              0 2007-02-01 00:01:00

# Check class of variables if numeric
class(ds_filter$Global_active_power)
##[1] "numeric"
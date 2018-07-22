#plot4

source('read_data.R')
power <- readData()
png(file = 'plot4.png')
par(mfcol=c(2,2))
plot2(power)
plot3(power)
with(power, plot(Time,Voltage,xlab='datetime',type='n'))
with(power , lines(Time,Voltage))

with(power, plot(Time,Global_reactive_power,xlab='datetime',type='n'))
with(power , lines(Time,Global_reactive_power))

dev.off()

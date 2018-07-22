
source('read_data.R')
plot2 <- function(power) {
    with(power,plot(Time,Global_active_power,type='n',ylab = 'Global Active Power (kilowatts)',xlab=''))
    with(power , lines(Time,Global_active_power))
}

power <- readData()
png(file = 'plot2.png')
plot2(power)
dev.off()


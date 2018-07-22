#plot1
source('read_data.R')

plot1 <- function(power) {
    with(power,hist(Global_active_power,col='red',main='Global Active Power',xlab='Global Active Power (kilowatts)'))
}

png(file = 'plot1.png')
power <- readData()
plot1(power)
dev.off()

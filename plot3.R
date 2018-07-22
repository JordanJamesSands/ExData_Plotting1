#plot3

source('read_data.R')
plot3 <- function(power) {
    with(power,plot(Time,Sub_metering_1,type='n',ylab='Energy sub metering',xlab=''))
    with(power, lines(Time,Sub_metering_1,col='black'))
    with(power, lines(Time,Sub_metering_2,col='red'))
    with(power, lines(Time,Sub_metering_3,col='blue'))
    legend('topright',legend = c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),col=c('black','red','blue'),lty=1)
}

power <- readData()
png(file = 'plot3.png')
plot3(power)
dev.off()
library(lubridate)
library(dplyr)

readData <- function() {
    power <- read.table('household_power_consumption.txt',sep=';',header=T,stringsAsFactors = F,na.strings='?')
    power <- mutate(power,Date = dmy(Date))
    power <- filter(power,Date == ymd('2007-02-01') | Date == ymd('2007-02-02'))
    power$Time <- strptime(paste(power$Date,power$Time),format = '%Y-%m-%d %H:%M:%S')
    power <- select(power,-Date)
    return(power)
}
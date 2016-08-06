source("Project1.R")

plot1Data <- projectData

plot1Data$Global_active_power <- as.numeric(plot1Data$Global_active_power, na.rm=TRUE) 

png("Plot1.png", width=480, height=480)
hist(plot1Data$Global_active_power
     , main = "Global Active Power"
     , xlab = "Global Active Power(kilowatts)"
     , ylab = "Frequency"
     , ylim = c( 0, 1200)
     , col = "red")
dev.off()

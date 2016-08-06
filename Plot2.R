source("Project1.R")
 
datetime <- projectData$DateTime 
globalActivePower <- as.numeric(projectData$Global_active_power)
png("Plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()

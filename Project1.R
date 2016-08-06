# download and unzip file if it does not already exists
if (!file.exists("household_power_consumption.txt")) { 
  temp <- tempfile()
  download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",temp)
  unzip(temp, exdir ="./")
}

# prepare the dataset we need
#rm('projectData')
if (!exists('projectData')){
  projectData <- read.csv("household_power_consumption.txt",sep = ';', stringsAsFactors = FALSE, dec = ".")
  
  projectData$DateTime <- strptime(paste(projectData$Date, projectData$Time), "%d/%m/%Y %H:%M:%S")
  
#  projectData$Date <- as.Date(projectData$Date, "%d/%m/%Y")
#  projectData <- subset(projectData, Date >= "2007-02-01" & Date <= "2007-02-02")
  projectData <- subset(projectData, DateTime >= "2007-02-01" & DateTime < "2007-02-03")
  #  projectData$Time <- strptime(projectData$Time, format="%H:%M:%S")
#  projectData$Global_active_power <- projectData$Global_active_power.asNumeric
  
}

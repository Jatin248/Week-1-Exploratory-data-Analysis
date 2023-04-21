getwd()

file <- "C:/Users/jatin/Documents/exdata_data_household_power_consumption/household_power_consumption.txt"

data <-read.table(file, header = TRUE, sep = ";")

Data <- data[data$Global_active_power %in% c("1/2/2007","2/2/2007"),]

New_G_A_P <- as.numeric(data$Global_active_power)

png("plot1.png", width = 480, height = 480)


hist(New_G_A_P,col = "red", main = "Global Active power", xlab = "Global Active Power (Kilowatts)")

dev.off()
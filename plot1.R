##PLOT1

#read table
Data<- read.table("./Exploratory Data/household_power_consumption.txt",sep=";",header=TRUE)

#set proper variable type to the date and time columns
Data$Date<-as.Date(as.character(Data$Date), format="%d/%m/%Y")
#Data$Time<-strptime(Data$Time,format="%X")

#Getting the required data to be plotted
DataToPlot<-Data[Data$Date==as.Date("2007-02-01",order="ymd") | Data$Date==as.Date("2007-02-02",order="ymd"),]



png("./Exploratory Data/plot1.png")
hist(as.numeric(as.character(DataToPlot$Global_active_power)),col="red",main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()

#read table
Data<- read.table("./Exploratory Data/household_power_consumption.txt",sep=";",header=TRUE)

#set proper variable type to the date and time columns
Data$Date<-as.Date(as.character(Data$Date), format="%d/%m/%Y")
#Data$Time<-strptime(Data$Time,format="%X")

#Getting the required data to be plotted
DataToPlot<-Data[Data$Date==as.Date("2007-02-01",order="ymd") | Data$Date==as.Date("2007-02-02",order="ymd"),]

##PLOT3

Xsize<-(dim(DataToPlot)[1])
png("./Exploratory Data/plot3.png")
plot(1:Xsize,as.numeric(as.character(DataToPlot$Sub_metering_1)), ylab="Energy sub metering",xlab="",axes=FALSE,type="l",col="purple")
lines(1:Xsize,as.numeric(as.character(DataToPlot$Sub_metering_2)),col="red")
lines(1:Xsize,as.numeric(as.character(DataToPlot$Sub_metering_3)),col="blue")
axis(1,c(1,Xsize/2,Xsize),labels=c("Thu","Fri","Sat"))
axis(2)
box()
legend("topright",legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),col=c("purple","blue","red"), lty=1)
dev.off()

#read table
Data<- read.table("./Exploratory Data/household_power_consumption.txt",sep=";",header=TRUE)

#set proper variable type to the date and time columns
Data$Date<-as.Date(as.character(Data$Date), format="%d/%m/%Y")
#Data$Time<-strptime(Data$Time,format="%X")

#Getting the required data to be plotted
DataToPlot<-Data[Data$Date==as.Date("2007-02-01",order="ymd") | Data$Date==as.Date("2007-02-02",order="ymd"),]


Xsize<-(dim(DataToPlot)[1])
png("./Exploratory Data/plot2.png")
plot(1:Xsize,as.numeric(as.character(DataToPlot$Global_active_power)), ylab="Global Active Power (kilowatts)",xlab="",axes=FALSE,type="l")
axis(1,c(1,Xsize/2,Xsize),labels=c("Thu","Fri","Sat"))
axis(2)
box()
dev.off()
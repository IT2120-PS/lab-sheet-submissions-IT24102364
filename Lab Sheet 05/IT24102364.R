getwd
setwd("C:\\Users\\IT24102364\\Desktop\\IT24102364")

#Q1
#Import the dataset
Delivery_Times <- read.table("Exercise - Lab 05.txt",header = TRUE,sep = ",")
head(Delivery_Times)


#Q2
#Draw the histogram
names(Delivery_Times) <- c("Deliver_Times")
attach(Delivery_Times)
histogram <- hist(Deliver_Times,main = "Histogram for Deliver Times",breaks = seq(20,70,length = 10),right = TRUE)

#Q3
#Comment on the shape of Distribution
#This is a bell shaped distribution.It has spread between the values of 20 and 70.

#Q4
#Get Cumulative Frequencies
cum.freq <- cumsum(freq)

new <- c()
for(i in 1:length(breaks)){
  if(i==1){
    new[i]= 0 
  }else{
    new[i] = cum.freq[i-1]
  }
}

#Cumulative frequency polygon
plot(breaks,new,type = 'l',main = "Cumulative Frequency Polygon for Data",
     xlab = "Deliver_Times",ylab = "Cumulative Frequency",ylim = c(0,max(cum.freq)))
cbind(Upper = breaks, Cum_Freq = new)
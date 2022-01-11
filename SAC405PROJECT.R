library(quantmod)
library(xts)
library(forecast)
library(TTR)
library(zoo)
library(tseries)
usa<- read.csv("C:/Users/cheru/OneDrive/Desktop/SAC 405 PROJECT/historical_prime rate.csv")
usa<-ts(usa[,2],start=c(1956,1),f=1)

plot(usa,ylab="AMPR")
summary(usa)
sapply(usa,sd)
usa_adf <- adf.test(usa)
usa_adf
acf(usa)
pacf(usa)
usaarima<-auto.arima(usa)
usaarima
plot(forecast(usaarima,h=10))
print(summary(usaarima))
checkresiduals(auto.arima(usa))



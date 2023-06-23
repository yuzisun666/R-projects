library(readxl)
data=read_excel("DepartmentStoreSales.xls", col_names = T)
data.ts = ts(data$Sales, start = c(1), frequency = 4)
library(forecast)
autoplot(data.ts)


data=read_excel("CanadianWorkHours.xls", col_names = T)
data.ts1 = ts(data$'Hours per week', start = c(1966), frequency = 5)
library(forecast)
autoplot(data.ts1)


data=read_excel("AustralianWines.xls", col_names = T)
data.ts2 = ts(data$Red, start = c(1980), frequency = 12)
library(forecast)
autoplot(data.ts2)

start(data.ts2)
end(data.ts2)

train.ts=window(data.ts2, end=c(1993,12), frequency=12)
valid.ts=window(data.ts2, start=c(1994,1))


model = tslm(train.ts~trend + season)
autoplot(train.ts)+
  autolayer(model$fitted.values)


pred=forecast(model, h=12)
pred
accuracy(train.ts, model$fitted.values)
accuracy(valid.ts, pred$mean)

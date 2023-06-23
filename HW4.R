install.packages("ISLR2")
library(ISLR2)
?Carseats
Carseatsdf = Carseats

attach(Carseatsdf)

mean(Sales)

data<-Carseats 

head(data)
str(Carseats)
model=lm(Sales~Price+Urban+US, data=data)
summary(model)

plot(model)

vif(model)

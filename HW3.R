library(ISLR2)
Auto = Auto
attach(Auto)
plot(horsepower, mpg)

m= lm(mpg~horsepower)
m
summary(m)

plot(horsepower,mpg)+ abline(lm(mpg~horsepower),col="red")

plot(m)

acf(m$residuals)


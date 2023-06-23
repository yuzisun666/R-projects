#install.packages("astsa")
library(astsa)

data("chicken")

chicken
mean(chicken)
median(chicken)
sd(chicken)
min(chicken)
max(chicken)
quantile(chicken)
IQR(chicken)
boxplot(chicken,
        ylab="moonthly Poultry price (US cents)",
        main="Boxplot")
#it's not symmetric, there is no outlier
?chicken
hist(chicken,main="",xlab="Price per pound (US cents)",ylab="Number of months")
#more than 30 month, The highest number of month is 8.5 cents to 9 cents,two moat,there are potential clusters
plot(chicken,ylab="cents per pound")
#the prices increase overtime
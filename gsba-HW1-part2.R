#install.packages("readxl")
library(readxl)
data=read_excel("Quiz1_2_.xlsx", col_names= T)
head(data,5)

attach(data)
planA=subset(Change, Plan=="A")
planB=subset(Change, Plan=="B")
t.test(planA, planB, alternative="less")

mean(planA)
mean(planB)

t.test(planB, planA, alternative="greater")

planC=subset(Change, Plan=="C")
t.test(planC, planA, alternative="greater")

mean(planC)

install.packages("readxl")
library(readxl)
data=read_excel("Quiz1dataset.xlsx", col_names= T)
head(data, 5)

attach(data)

mean(Number_Of_Games)

new.ver.number=subset(Number_Of_Games, Version=="New")
old.ver.number=subset(Number_Of_Games, Version=="Old")
t.test(new.ver.number, old.ver.number, alternative="greater")

data=read.csv("Campaign.csv", header = T)
head(data, 5)

attach(data)
amt.V1.Eng= subset(Amt, Language=="English"& Version=="V1")
mean(amt.V1.Eng)
amt.C= subset(Amt, Version=="C")
mean(amt.C)
amt.V1= subset(Amt, Version=="V1")
mean(amt.V1)

t.test(amt.V1, amt.C, alternative="greater")

amt.Midwest.V1=subset(Amt, Region=="Midwest" & Version=="V1")
amt.Midwest.C=subset(Amt, Region=="Midwest" & Version=="C")

t.test(amt.Midwest.V1, amt.Midwest.C, alternative="greater")


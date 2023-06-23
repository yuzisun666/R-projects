data=read.table("PolaskiTaste.txt", header=T)
attach(data)
mean(data$Stoly)
mean(data$Polaski)

attach(data)
t.test(Stoly,Polaski, alternative="greater")

# is being nice worth it?

data= read.table("Rintro_SantaClaus.txt", header = T)
head(data,2)
attach(data)
boxplot(Presents~Behaviour)
t.test(Presents~Behaviour,alternative="less")

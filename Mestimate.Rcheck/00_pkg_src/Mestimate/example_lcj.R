library(Mestimate)
data(mydata)
K=mydata$K
Linf=mydata$Linf
tmax=mydata$tmax
Class=as.factor(mydata$class)
mydata1=data.frame(tmax,Class)
mydata2=data.frame(K,Linf,Class)
mydata3=data.frame(K,Linf,tmax,Class)
predictedM1=Mestimate(mydata1,method="BRT1")
predictedM2=Mestimate(mydata2,method="BRT2")
predictedM3=Mestimate(mydata3,method="BRT3")


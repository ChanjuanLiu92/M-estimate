
Mestimate=function(mydata,method){
  library(caret)
  library(gbm)
  library(lattice)
  library(ggplot2)
  data(metadata324)
  M=metadata324$M
  K=metadata324$K
  Linf=metadata324$Linf
  tmax=metadata324$tmax
  Class=as.factor(metadata324$Class)

  data1=na.omit(data.frame(M,tmax,Class))
  data2=na.omit(data.frame(M,K,Linf,Class))
  data3=na.omit(data.frame(M,K,Linf,tmax,Class))


  if (method=="BRT1"){
    model1=gbm(M~.,data=data1,distribution="gaussian",
               n.trees=400,
               interaction.depth=5,
               shrinkage=0.01,
               n.minobsinnode = 1)
    data.frame(predict(model1,mydata,n.trees=400))
    }

  else if (method=="BRT2"){
    model2=gbm(M~.,data=data2,distribution="gaussian",
               n.trees=300,
               interaction.depth=8,
               shrinkage=0.01,
               n.minobsinnode = 1)
    data.frame(predict(model2,mydata,n.trees=300))
  }

  else if (method=="BRT3"){
    model3=gbm(M~.,data=data3,distribution="gaussian",
               n.trees=380,
               interaction.depth=8,
               shrinkage=0.01,
               n.minobsinnode = 1)
    data.frame(predict(model3,mydata,n.trees=380))
  }
}

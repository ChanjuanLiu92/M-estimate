\name{Mestimate}
\alias{Mestimate}
\title{Estimate M of fish using boosting trees}
\usage{
Mestimate(mydata,method)
}
\description{
Tree-based ensemble learnig methods can significantly improve the prediction performance of fish mortality. This package provides three optimal boosting trees models according to the life history parameters used for M estimate. People are not always able to get all the fish life history parameters. We recommend using the BRT1 model when only the parameter tmax is available, and BRT2 model when only the parameters K and Linf are available. When all life parameters are available, we recommend using the BRT3 model, which performs best in M estimation.
    An example data with 3 Chanondricthyes fish and 3 Osteichthyes fish is given in the package. See also "Examples" to use this package.
    class=1, represents Chondrichthyes fish, and class=0 represents Osteichthyes fish.
}
\arguments{
\item{mydata}{Dataframe containing the life history parameters}
\item{method}{BRT1,BRT2 or BRT3}
}
\author{Chanjuan Liu, Shijie Zhou, Zhihua Hu, and Yougan Wang}
\examples{
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
}
\keyword{regression}


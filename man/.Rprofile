library(fastcox)
help("Deprecated")
example(fastcox)
data(FHT)#
m1<-cocktail(x=FHT$x,y=FHT$y,d=FHT$status,alpha=0.5)#
predict(m1,newx=FHT$x[1:5,],s=c(0.01,0.005))#
predict(m1,type="nonzero")#
plot(m1)
x
setwd('/Users/emeryyi/Dropbox/Research/googleproject/fastcox/R')
library(fastcox)#
data(FHT)#
x=FHT$x#
y=FHT$y#
d=FHT$status#
m1<-cocktail(x=FHT$x,y=FHT$y,d=FHT$status,alpha=0.5)#
predict(m1,newx=FHT$x[1:5,],s=c(0.01,0.005))#
predict(m1,type="nonzero")#
plot(m1)
if(!is.null(lambda)&&length(lambda)<2)stop("Need more than one value of lambda for cv.cocktail")#
  N=nrow(x)
cocktail.object=cocktail(x,y,d,lambda=lambda,...)
cocktail.object=cocktail(x,y,d)
lambda=cocktail.object$lambda
lambda
nz=sapply(predict(cocktail.object,type="nonzero"),length)
nz
if(nfolds<3)stop("nfolds must be bigger than 3; nfolds=10 recommended")#
   outlist=as.list(seq(nfolds))
nfolds=10
if(nfolds<3)stop("nfolds must be bigger than 3; nfolds=10 recommended")
outlist=as.list(seq(nfolds))
i=1
if(is.matrix(y))y_sub=y[!which,]else y_sub=y[!which]#
	if(is.matrix(d))d_sub=d[!which,]else d_sub=d[!which]
which=foldid==i
foldid
foldid=sample(rep(seq(nfolds),length=N))
which=foldid==i#
    if(is.matrix(y))y_sub=y[!which,]else y_sub=y[!which]#
	if(is.matrix(d))d_sub=d[!which,]else d_sub=d[!which]
outlist[[i]]=cocktail(x[!which,,drop=FALSE],y_sub,d_sub,...)
outlist[[i]]=cocktail(x[!which,,drop=FALSE],y_sub,d_sub)
for(i in seq(nfolds)){#
    which=foldid==i#
    if(is.matrix(y))y_sub=y[!which,]else y_sub=y[!which]#
	if(is.matrix(d))d_sub=d[!which,]else d_sub=d[!which]#
    outlist[[i]]=cocktail(x[!which,,drop=FALSE],y_sub,d_sub)#
  }
outlist
setwd('/Users/emeryyi/Dropbox/Research/googleproject/fastcox/man')
fun=paste("cv",class(cocktail.object)[[1]],sep=".")

library(fastcox)#
library(glmnet)#
data(FHT)#
x=FHT$x#
y=FHT$y#
d=FHT$status#
nfolds=10#
  N=nrow(x)#
###Fit the model once to get dimensions etc of output#
  y=drop(y) # we dont like matrix responses unless we need them#
  cocktail.object=cocktail(x,y,d)#
  lambda=cocktail.object$lambda#
  nz=sapply(predict(cocktail.object,type="nonzero"),length)#
  foldid=sample(rep(seq(nfolds),length=N))#
  if(nfolds<3)stop("nfolds must be bigger than 3; nfolds=10 recommended")#
   outlist=as.list(seq(nfolds))#
###Now fit the nfold models and store them#
  for(i in seq(nfolds)){#
    which=foldid==i#
    if(is.matrix(y))y_sub=y[!which,]else y_sub=y[!which]#
	if(is.matrix(d))d_sub=d[!which,]else d_sub=d[!which]#
    outlist[[i]]=cocktail(x[!which,,drop=FALSE],y_sub,d_sub)#
  }#
  ###What to do depends on the type.measure and the model fit#
  nfolds=max(foldid)#
  cvraw=matrix(NA,nfolds,length(lambda))#
i=1#
    which=foldid==i#
    fitobj=outlist[[i]]#
    coefmat=predict(fitobj,type="coeff")#
    plfull=survpath.deviance(x=x,y=y,d=d,beta=coefmat)
plfull=survpath.deviance(x=x,y=coxy,beta=coefmat)
coefmat=predict(fitobj,type="coeff")
setwd('/Users/emeryyi/Desktop')
plfull=survpath.deviance(x=x,y=y,d=d,beta=coefmat)
setwd('/Users/emeryyi/Dropbox/Research/googleproject/fastcox/R')
survpath.deviance=function(pred=NULL,y,x=0,offset=pred,weights=NULL,beta=NULL){#
  storage.mode(x)="double"#
  y=response.survpath(y)#
  ty=y$time#
  tevent=y$event#
  nobs=as.integer(length(ty))#
  nvars=as.integer(ncol(x))#
  if(is.null(weights))weights=rep(1.0,nobs)#
  else weights=as.double(weights)#
  if(is.null(offset))offset=rep(0.0,nobs)#
  else offset=as.double(offset)#
  if(is.null(beta)){#
    beta=double(0)#
    nvec=as.integer(1)#
    nvars=as.integer(0)#
  }#
  else{#
    beta=as.matrix(beta)#
    nvec=as.integer(ncol(beta))#
  }#
  fit=.Fortran("loglike",#
    nobs,nvars,x,ty,tevent,offset,weights,nvec,beta,#
    flog=double(nvec),#
    jerr=integer(1),#
    PACKAGE="fastcox")#
-2*fit$flog#
}

predict.cocktail=function(object,newx,s=NULL,type=c("link","response","coefficients","nonzero"),...){
  type=match.arg(type)
  if(missing(newx)){
    if(!match(type,c("coefficients","nonzero"),FALSE))stop("You need to supply a value for 'newx'")
  }
  nbeta=object$beta
   if(!is.null(s)){
    vnames=dimnames(nbeta)[[1]]
    dimnames(nbeta)=list(NULL,NULL)
    lambda=object$lambda
    lamlist=lambda.interp(lambda,s)
    nbeta=nbeta[,lamlist$left,drop=FALSE]*lamlist$frac +nbeta[,lamlist$right,drop=FALSE]*(1-lamlist$frac)
    dimnames(nbeta)=list(vnames,paste(seq(along=s)))
  }
  if(type=="coefficients")return(nbeta)
  if(type=="nonzero")return(nonzeroCoef(nbeta,bystep=TRUE))
  nfit=as.matrix(newx%*%nbeta)
  switch(type,
         response=exp(nfit),
         link=nfit
         )
}  

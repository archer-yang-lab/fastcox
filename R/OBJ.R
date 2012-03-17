OBJ=function(y,x,d,beta=NULL){
  storage.mode(x)="double"
  ty=as.double(y)
  tevent=as.double(d)
  if(any(ty<=0))stop("negative event times encountered;  not permitted for Cox family")
  nobs=as.integer(length(ty))
  nvars=as.integer(ncol(x))
  if(is.null(beta)){
    beta=double(0)
    nlam=as.integer(1)
    nvars=as.integer(0)
  }
  else{
    beta=as.matrix(beta)
    nlam=as.integer(ncol(beta))
  }
  fit=.Fortran("OBJ",
    nobs,nvars,as.double(x),ty,tevent,as.double(beta),nlam,
    loss=double(nlam),
    PACKAGE="cocktail")
  res = fit$loss
  res
}
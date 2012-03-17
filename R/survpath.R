survpath<-function(x,y,d,nlam,flmin,ulam,isd,eps,dfmax,pmax,jd,pf,maxit,alpha,penalty.type,nobs,nvars,vnames)
{
	#################################################################################	
	#data setup
	if(any(y<=0))stop("Negative event times encountered;  not permitted for Cox family")
	if(max(d)==0)stop("All observations censored" )
	if(length(d)!=nobs) stop("x, y and d have different number of elements")
	#################################################################################
	o <- order(d,decreasing=T)
	oo <- o[order(y[o])]
	x <- x[oo, ]
	y <- y[oo]
	d <- d[oo]
	rs <- which(d==1)
	nrs <- length(rs)
	rs=as.integer(rs)
	nrs=as.integer(nrs)
	#################################################################################
	# call Fortran core
	fit=.Fortran("coxlassoNET",rs,nrs,alpha,
									nobs,nvars,as.double(x),
									jd,pf,dfmax,pmax,nlam,flmin,ulam,eps,isd,maxit,
									nalam=integer(1),
									beta=double(pmax*nlam),
									ibeta=integer(pmax),
									nbeta=integer(nlam),
									alam=double(nlam),
									npass=integer(1),
									jerr=integer(1),PACKAGE="cocktail")
	#################################################################################	
	# output
	errmsg=err(fit$jerr,maxit,pmax)### error messages from fortran
	switch(paste(errmsg$n),
	"1"=stop(errmsg$msg,call.=FALSE),
	"-1"=warning(errmsg$msg,call.=FALSE)
	)		
	outlist=getoutput(fit,maxit,pmax,nvars,vnames)
	outlist=c(outlist,list(npasses=fit$npass,jerr=fit$jerr))
	class(outlist)=c("survpath")
	outlist
}



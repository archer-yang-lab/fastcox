BIC <- function(fit, x, y, d){
	nobs = nrow(x)
	lam = fit$lambda
	beta = fit$beta
    loglik = OBJ(y=y,x=x,d=d,beta=beta)
	df = fit$df
 	BIC = 2 * nobs * loglik + log(nobs) * df
	cmin = min(BIC)
	idmin = BIC <= cmin
	lambda.min = max(fit$lambda[idmin])
	outlist = list(lambda.min = lambda.min, idmin = idmin, BIC = BIC, loglik = loglik, cmin = cmin)
	outlist
}
<<<<<<< mine
AIC <- function(fit, x, y, d){
	nobs = nrow(x)
	lam = fit$lambda
	beta = fit$beta
    loglik = OBJ(y=y,x=x,d=d,beta=beta)
	df = fit$df
 	AIC = 2 * loglik + 2 * df
	cmin = min(AIC)
	idmin = AIC <= cmin
	lambda.min = max(fit$lambda[idmin])
	outlist = list(lambda.min = lambda.min, idmin = idmin, AIC = AIC, loglik = loglik, cmin = cmin)
	outlist
}=======
AIC <- function(fit, x, y, d){
	nobs = nrow(x)
	lam = fit$lambda
	beta = fit$beta
    loglik = OBJ(y=y,x=x,d=d,beta=beta)
	df = fit$df
 	AIC = 2 * nobs * loglik + 2 * df
	cmin = min(AIC)
	idmin = AIC <= cmin
	lambda.min = max(fit$lambda[idmin])
	outlist = list( lambda.min = lambda.min, idmin = idmin, AIC = AIC, loglik = loglik)
	outlist
}>>>>>>> theirs

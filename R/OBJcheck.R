OBJcheck=function(y,x,d,alpha,lam,beta){
	o = rep(0,length(lam))
    loss=OBJ(y=y,x=x,d=d,beta=beta)
	B <- as.matrix(beta)
	ctr = 0
	for (l in 1:length(lam))
	{
	   o[l] <- loss[l] + 0.5*lam[l]*(1-alpha)*crossprod(B[,l],B[,l]) + alpha*lam[l]*sum(abs(B[,l])) 
    }
    o
}
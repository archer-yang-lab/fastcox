KKTcheck=function(y,x,d,alpha,p,lam,thr,beta){
    fj=KKT(y=y,x=x,d=d,beta=beta)
	B <- as.matrix(beta)
	ctr = 0
	for (l in 1:length(lam))
	{
		for (j in 1:p)
		{
			if(B[j,l]!=0)
			{
				AA <- fj[j,l] + lam[l]*(1-alpha)*B[j,l] + alpha*lam[l]*sign(B[j,l]) 
				if(abs(AA) > thr){
					# cat("violate b != 0", AA, "\n")
					ctr = ctr + 1
					
				}
			}
			else{
				BB = abs(fj[j,l]) - alpha*lam[l]
				if(BB > thr){
					# cat("violate b = 0", BB, "\n")
					ctr = ctr + 1
				} 
				}
		}
	}
	cat("# of violations",ctr,"\n")
	return(ctr)
}
\name{cocktail-package}
\alias{cocktail-package}
\docType{package}
\title{Lasso and elastic-net penalized Cox's regression in high dimensions models using the cocktail algorithm}
\description{We introduce a cocktail algorithm, a good mixture of coordinate decent, the majorization-minimization principle and the strong rule, for computing the solution paths of the elastic net penalized Cox's proportional hazards model.}
\details{
\tabular{ll}{
Package:	\tab cocktail\cr
Type: 		\tab Package\cr
Version: 	\tab 1.0.0\cr
Date: 		\tab 2011-12-13\cr
Depends: 	\tab Matrix\cr
License: 	\tab GPL (version 2)\cr
URL: 		\tab http://code.google.com/p/cocktail/\cr
}
}

\author{Yi Yang and Hui Zou\cr
Maintainer: Yi Yang  <yiyang@umn.edu>}
\references{
Yi Yang. \dQuote{Computational Algorithms for High Dimensional Problems}. Ph.D. Thesis, School of Statistics, University of Minnesota.

\url{http://code.google.com/p/cocktail/}}

\examples{
data(FHT)
m1<-cocktail(x=FHT$x,y=FHT$y,d=FHT$status,alpha=0.5)
predict(m1,newx=FHT$x[1:5,],s=c(0.01,0.005))
predict(m1,type="nonzero")
plot(m1)
}

\keyword{package}


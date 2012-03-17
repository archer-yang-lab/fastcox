\name{print.cocktail}
\alias{print.cocktail}
\title{print a cocktail object}
\description{
Print a summary of the cocktail path at each step along the path.
}
\usage{
\method{print}{cocktail}(x, digits = max(3, getOption("digits") - 3), ...)
}
\arguments{
  \item{x}{fitted \code{\link{cocktail}} object}
  \item{digits}{significant digits in printout}
  \item{\dots}{additional print arguments}
}
\details{
The call that produced the \code{\link{cocktail}} object is printed, followed by a two-column matrix with columns \code{Df} and \code{Lambda}. The \code{Df} column is the number of nonzero coefficients.
}
\value{
a two-column matrix, the first columns is the number of nonzero coefficients and the second column is \code{Lambda}.}

\author{Yi Yang and Hui Zou\cr
Maintainer: Yi Yang  <yiyang@umn.edu>}

\examples{
data(FHT)
m1<-cocktail(x=FHT$x,y=FHT$y,d=FHT$status,alpha=0.5)
print(m1)
}
\keyword{models}
\keyword{regression}


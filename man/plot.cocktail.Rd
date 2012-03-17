\name{plot.cocktail}
\alias{plot.cocktail}
\title{Plot coefficients from a "cocktail" object}
\description{
Produces a coefficient profile plot of the coefficient paths for a
fitted \code{\link{cocktail}} object.
}
\usage{
\method{plot}{cocktail}(x, xvar = c("norm", "lambda"), color = FALSE, label = FALSE, ...)
}
\arguments{
		\item{x}{fitted \code{\link{cocktail}} model}
		\item{xvar}{what is on the X-axis. \code{"norm"} plots against the
		L1-norm of the coefficients, \code{"lambda"} against the log-lambda
		sequence.}
		\item{color}{if \code{TRUE}, plot the curves with rainbow colors. \code{FALSE} is gray colors. Default is \code{FALSE}}
		\item{label}{if \code{TRUE}, label the curves with variable sequence numbers. Default is \code{FALSE}}
		\item{\dots}{other graphical parameters to plot}
}
\details{
A coefficient profile plot is produced.
}
\author{Yi Yang and Hui Zou\cr
Maintainer: Yi Yang  <yiyang@umn.edu>}
\references{
Yi Yang. \dQuote{Computational Algorithms for High Dimensional Problems}. Ph.D. Thesis, School of Statistics, University of Minnesota.

\url{http://code.google.com/p/cocktail/}}

\examples{
data(FHT)
m1<-cocktail(x=FHT$x,y=FHT$y,d=FHT$status,alpha=0.5)
par(mfrow=c(1,3))
plot(m1) # plots against the L1-norm of the coefficients
plot(m1,xvar="lambda",label=TRUE) # plots against the log-lambda sequence
plot(m1,color=TRUE)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{models}
\keyword{regression}

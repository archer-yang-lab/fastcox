


---


# R package: fastcox #



Author: Yi Yang and Hui Zou



Reference: Yang, Y. and Zou, H. (2012), _A Cocktail Algorithm for Solving The Elastic Net Penalized Cox’s Regression in High Dimensions Statistics and Its Interface._, Statistics and Its Interface. Accepted.



This package is Copyright (C) 2012 Yi Yang and Hui Zou.  All rights reserved by the authors.



---


# Overview #



We implement a cocktail algorithm, a good mixture of coordinate decent, the majorization-minimization principle and the strong rule, for computing the solution paths of the elastic net penalized Cox’s proportional hazards model.


---

# Installation #




## Install from CRAN ##

The package is now available on the [CRAN](http://cran.r-project.org) fastcox site: http://cran.r-project.org/web/packages/fastcox.

It can be installed using the commands
```
install.packages("fastcox")
library(fastcox)
```

## Install from this Google Code site ##

### R under Windows ###

  1. Go to the "Downloads" tab on this site and download the most recent zip-file (Windows binary) to your hard drive.
  1. Open R and select from the "Packages" menu at the top of the R console "Install package(s) from local zip files...".
  1. Navigate to the folder where you saved the zip-file, select the zip-file and click open.

### R under Linux / Mac OS X ###

  1. Go to the "Downloads" tab on this site and download the most recent tar.gz-file (source code) to your hard drive.
  1. Open a terminal window and navigate to the folder where you saved the tar.gz-file and type: R CMD INSTALL
  1. fastcox\_x.x.x.tar.gz (substitute x.x.x with the version number)



---


# Documentation #




Download the full pdf reference [documentation](http://code.google.com/p/fastcox/downloads/list) which contains a function index



---


# Getting Started #




After you installed the package type into R:
```
library(fastcox)
```
Type
```
?fastcox
```
to see overall documentation.

See some example here

```

# 0. Load fastcox library and FHT data.
library(fastcox)
data(FHT)

# 1. fit the solution paths
m1<-cocktail(x=FHT$x,y=FHT$y,d=FHT$status,alpha=0.5)

# 2. make a plot for solution paths.
plot(m1)

```


---


# Screen Shot #

![http://fastcox.googlecode.com/files/screenshot1.jpg](http://fastcox.googlecode.com/files/screenshot1.jpg)
% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/alige.R
\name{localIGE}
\alias{localIGE}
\title{localIGE}
\usage{
localIGE(formla, xformla = NULL, data, tvals, h = NULL, cl = 1)
}
\arguments{
\item{formla}{a formula y ~ treatment}

\item{xformla}{one sided formula for x variables to include, e.g. ~x1 + x2}

\item{data}{the data.frame where y, t, and x are}

\item{tvals}{a grid of values of treatment variable}

\item{h}{bandwidth}

\item{cl}{the number of clusters to use, default is 1}
}
\value{
lige
}
\description{
Computes local intergenerational elasticities
}
\examples{
data(igm)
igm$hs=ifelse(igm$HEDUC=="HS",1,0)
igm$col=ifelse(igm$HEDUC=="COL",1,0)
formla=lcfincome~lfincome
xformla=~hs+col
tvals=seq(quantile(igm$lfincome,probs = 0.1),quantile(igm$lfincome,probs = 0.9),length.out = 10)
h=1.2
cl=1
data=igm
localIGE(formla=formla, xformla=xformla, data=data,tvals=tvals,h=h,cl=cl)
}

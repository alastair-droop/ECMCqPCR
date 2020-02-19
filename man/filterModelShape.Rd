\name{filterModelShape}
\alias{filterModelShape}
\title{Filter Wells based on Curve Shape}
\description{Filter wells based on modelled curve shape.}
\usage{
filterModelShape(x, crit.Rs=0.99)
}
\arguments{
\item{x}{a \code{qpcrmodlist.stats} data.frame as created by \code{\link{pcrModelStats}}.}
\item{crit.Rs}{the critical value for the adjusted R^2 value of the curve model fit.}
}
\value{A vector logical values, showing which wells have valid curves.}
\seealso{
\code{\link{pcrModelStats}} for generating model statistics.
}

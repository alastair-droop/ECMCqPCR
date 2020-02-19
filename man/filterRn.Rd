\name{filterRn}
\alias{filterRn}
\title{Filter Wells based on Rn}
\description{Filter wells based on specified Rn values, returning only wells for which the signal fluorescence is higher than the passive control.}
\usage{
filterRn(x)
}
\arguments{
\item{x}{an Rn matrix as created by \code{\link{calculateRn}}.}
}
\value{A vector logical values, showing which wells have valid Rn data.}
\seealso{
\code{\link{calculateRn}} for generating Rn matrices.
}

\name{filterCt}
\alias{filterCt}
\title{Filter Wells based on Ct}
\description{Filter wells based on specified Ct values, returning only wells for which the Ct value is not NA, and falls within the specified range.}
\usage{
filterCt(x, min=3, max=35)
}
\arguments{
\item{x}{a Ct vector as created by \code{\link{calculateCt}}.}
\item{min}{the minimum valid Ct value.}
\item{max}{the maximum valid Ct value.}
}
\value{A vector logical values, showing which wells have valid Ct values.}
\seealso{
\code{\link{calculateCt}} for generating Ct data.
}

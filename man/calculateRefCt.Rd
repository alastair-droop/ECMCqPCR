\name{calculateRefCt}
\alias{calculateRefCt}
\title{Calculate a Reference Ct Value}
\description{Calculate a reference Ct value based on the geometric mean of the specified wells.}
\usage{
calculateRefCt(x, wells)
}
\arguments{
\item{x}{a Ct vector as created by \code{\link{calculateCt}}.}
\item{wells}{the wells to use when calculating the reference Ct value.}
}
\value{A single eference Ct value.}
\seealso{
\code{\link{calculateCt}} for generating Ct data.
}

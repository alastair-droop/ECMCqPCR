\name{calculateBaseline}
\alias{calculateBaseline}
\title{Calculate Baseline Values from an Rn matrix}
\description{Calculate baseline Rn values from an Rn matrix based upon a flat phase start and end cycle.}
\usage{
calculateBaseline(x, start=3, end=15)
}
\arguments{
\item{x}{an Rn matrix as created by \code{\link{calculateRn}}.}
\item{start}{the flat phase start cycle.}
\item{end}{the flat phase end cycle.}
}
\value{A data.frame of baseline data.}
\seealso{
\code{\link{calculateRn}} for generating Rn matrices.

\code{\link{pcrModelFlatPhaseEnd}} for modelling the flat phase endpoint from PCR curve models.
}

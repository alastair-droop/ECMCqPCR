\name{dyeFluorescence}
\alias{dyeFluorescence}
\title{Extract dye fluorescence matrix from multicomponent data}
\description{Extract a fluorescence data matrix for a specified card from a multicomponent data frame.}
\usage{
dyeFluorescence(x, card, dye=ECMCqPCR::dyes)
}
\arguments{
\item{x}{a multicomponent data frame object.}
\item{card}{the card for which fluorescence data should be extracted.}
\item{dye}{the dye name for which fluorescence data should be extracted.}
}
\value{A matrix of dye fluorescence values.}
\seealso{
\code{\link{fluorescence}}.
}

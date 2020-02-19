\name{fluorescence}
\alias{fluorescence}
\title{Extract a pair of fluorescence matrices from multicomponent data}
\description{Extract a pair od fluorescence data matrices for a specified card from a multicomponent data frame.}
\usage{
fluorescence(x, card)
}
\arguments{
\item{x}{a multicomponent data frame object.}
\item{card}{the card for which fluorescence data should be extracted.}
}
\value{A list of dye fluorescence values, one for each dye in the \code{\link{dyes}} vector.}
\seealso{
\code{\link{dyeFluorescence}}.
}

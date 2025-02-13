\name{pcrModelStats}
\alias{pcrModelStats}
\title{Extract model efficiency statistics from a model list}
\description{Extract model efficiency statistics from a model list generated by \code{\link{pcrModel}}.}
\usage{
pcrModelStats(x, mc.cores=1, ...)
}
\arguments{
\item{x}{a model list as created by \code{\link{pcrModel}}.}
\item{mc.cores}{the number of cores used for processing.}
\item{...}{further arguments to pass to \code{\link{efficiency}}}
}
\value{A data.frame of model efficiency statistics.}
\seealso{
\code{\link{pcrModel}} for generating model lists from fluorescence data.
\code{\link{efficiency}} for the underlying function.
}

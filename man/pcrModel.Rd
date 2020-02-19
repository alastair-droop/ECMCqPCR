\name{pcrModel}
\alias{pcrModel}
\title{Model curve shapes}
\description{Model PCR curve shapes from a fluorescence matrix using the qpcR package.}
\usage{
pcrModel(x, mc.cores=1, ...)
}
\arguments{
\item{x}{a fluorescence matrix as created by \code{\link{fluorescence}} or \code{\link{dyeFluorescence}}.}
\item{mc.cores}{the number of cores used to process data.}
\item{...}{further arguments to pass to \code{\link{pcrfit}}}
}
\value{A list of qpcR models, one for each well.}
\seealso{
\code{\link{fluorescence}} and \code{\link{dyeFluorescence}} for loading fluorescence matrices.
\code{\link{pcrfit}} for the underlying modelling code.
}

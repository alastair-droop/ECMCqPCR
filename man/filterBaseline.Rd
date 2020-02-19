\name{filterBaseline}
\alias{filterBaseline}
\title{Filter Wells based on Baseline Smoothness}
\description{Filter wells based on the smoothness of the baseline, returning only wells for which absoute coefficient of variation is less than a threshold.}
\usage{
filterBaseline(x, threshold)
}
\arguments{
\item{x}{a baseline object as created by \code{\link{calculateBaseline}}.}
\item{threshold}{the threshold absolute smoothness value.}
}
\details{
the smoothness is calculated as the baseline standard deviation divided by the absolute value.
}
\value{A vector logical values, showing which wells have valid baseline data.}
\seealso{
\code{\link{calculateBaseline}} for generating baseline data.
}

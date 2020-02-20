\name{wellLevels}
\alias{wellLevels}
\title{Sort Well Values}
\description{Returns a sorted list of unique well values.}
\usage{
wellLevels(x)
}
\arguments{
\item{x}{a vector of well values (in the format X01).}
}
\details{
Input well values are first deduplicated before being sorted by row (in lexicographic order) and columns (in numeric order).
}
\value{A vector of sorted unique well values.}

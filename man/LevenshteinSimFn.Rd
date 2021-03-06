% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/similarityFns.R
\name{LevenshteinSimFn}
\alias{LevenshteinSimFn}
\title{Levenshtein similarity function}
\usage{
LevenshteinSimFn(threshold, maxSimilarity)
}
\arguments{
\item{threshold}{Similarities below this threshold will be set to zero. A
higher threshold improves the efficiency of the inference, possibly at
the expense of accuracy.}

\item{maxSimilarity}{Similarities will be in the range \verb{[0, maxSimilarity]}.}
}
\value{
a \code{LevenshteinSimFn} object
}
\description{
Levenshtein similarity function
}

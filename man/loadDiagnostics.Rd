% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/summaryStats.R
\name{loadDiagnostics}
\alias{loadDiagnostics}
\title{Load diagnostics from disk}
\usage{
loadDiagnostics(sc, projectPath)
}
\arguments{
\item{sc}{A \code{spark_connection}}

\item{projectPath}{Path to the project directory.}
}
\value{
a table containing diagnostics along the Markov chain
}
\description{
Load diagnostics from disk
}

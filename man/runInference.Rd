% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/runInference.R
\name{runInference}
\alias{runInference}
\title{Run inference using Markov chain Monte Carlo}
\usage{
runInference(
  initialState,
  projectPath,
  sampleSize,
  burninInterval = 0L,
  thinningInterval = 1L,
  checkpointInterval = 20L,
  writeBufferSize = 10L,
  sampler = "PCG-I"
)
}
\arguments{
\item{initialState}{a \code{State} jobj which represents the initial state of
the Markov chain}

\item{projectPath}{A string specifying the path to save output (includes
samples and diagnostics). HDFS and local filesystems are supported.}

\item{sampleSize}{A positive integer specifying the desired number of
samples (after burn-in and thinning)}

\item{burninInterval}{A non-negative integer specifying the number of
initial samples to discard as burn-in. The default is 0, which means no
burn-in is applied.}

\item{thinningInterval}{A positive integer specifying the period for saving
samples to disk. The default value is 1, which means no thinning is
applied.}

\item{checkpointInterval}{A non-negative integer specifying the period for
checkpointing. This prevents the lineage of the RDD (internal to state)
from becoming too long. Smaller values require more frequent writing to
disk, larger values require more CPU/memory. The default value of 20,
is a reasonable trade-off.}

\item{writeBufferSize}{A positive integer specifying the number of samples
to queue in memory before writing to disk.}

\item{sampler}{One of 'PCG-I', 'PCG-II', 'Gibbs' or 'Gibbs-Sequential'.}
}
\value{
a \code{State} jobj which represents the state at the end of the
Markov chain
}
\description{
Generates posterior samples by successively applying the Markov transition
operator starting from a given initial state. The samples are written to
the path provided.
}
\seealso{
\code{\link{initializeState}}, \code{\link{loadState}}
}

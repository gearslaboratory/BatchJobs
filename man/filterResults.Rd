% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/filterResults.R
\name{filterResults}
\alias{filterResults}
\title{Find all results where a specific condition is true.}
\usage{
filterResults(reg, ids, fun, ...)
}
\arguments{
\item{reg}{[\code{\link{Registry}}]\cr
Registry.}

\item{ids}{[\code{integer}]\cr
Ids of jobs whose results you want to test for the condition.
Default is all jobs for which results are available.}

\item{fun}{[\code{fun(job, res)}]\cr
Predicate function that returns \code{TRUE} or \code{FALSE}.}

\item{...}{[any]\cr
Additional arguments to \code{fun}.}
}
\value{
[\code{integer}]. Ids of jobs where \code{fun(job, result)} returns \code{TRUE}.
}
\description{
Find all results where a specific condition is true.
}
\examples{
reg = makeRegistry(id = "BatchJobsExample", file.dir = tempfile(), seed = 123)
f = function(x) x^2
batchMap(reg, f, 1:10)
submitJobs(reg)
waitForJobs(reg)

# which square numbers are even:
filterResults(reg, fun = function(job, res) res \%\% 2 == 0)
}

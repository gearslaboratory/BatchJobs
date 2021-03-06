% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/clusterFunctionsHelpers.R
\name{cfBrewTemplate}
\alias{cfBrewTemplate}
\title{Cluster functions helper: Brew your template into a job description file.}
\usage{
cfBrewTemplate(conf, template, rscript, extension)
}
\arguments{
\item{conf}{[\code{environment}]\cr
BatchJobs configuration.}

\item{template}{[\code{character(1)}]\cr
Job desfription template as a char vecrtor,
possibly read in via \code{\link{cfReadBrewTemplate}}.}

\item{rscript}{[\code{character(1)}]\cr
File path to you your corresponding R script for the job.}

\item{extension}{[\code{character(1)}]\cr
Extension for the job description file, e.g. \dQuote{pbs}.}
}
\value{
[\code{character(1)}]. File path of result.
}
\description{
This function is only intended for use in your own cluster functions implementation.

Calls brew silently on your template, any error will lead to an exception.
If debug mode is turned on in the configuration, the file is stored at the same place as the
corresponding R script in the \dQuote{jobs}-subdir of your files directory,
otherwise in the temp dir via \code{\link{tempfile}}.
}

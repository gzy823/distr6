% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DistributionDecorator_ExoticStatistics.R
\name{cumHazard}
\alias{cumHazard}
\title{Cumulative Hazard Function}
\usage{
cumHazard(object, x1, log = FALSE)
}
\arguments{
\item{object}{Distribution.}

\item{x1}{Point to evaluate the cumulative hazard function at.}

\item{log}{logical, if TRUE then the (natural) logarithm of the cumulative hazard function is returned.}
}
\description{
The cumulative hazard function of a probability distribution is the anti-derivative of
the hazard function.
}
\details{
The cumulative hazard function is defined analytically by
\deqn{H_X(x) = -log(S_X)}
where X is the distribution and \eqn{S_X} is the survival function.

If an analytic expression isn't available, returns error. To impute a numerical expression, use the
\code{\link{ExoticStatistics}} decorator.
}
\section{R6 Usage}{
 $cumHazard(x1, log = FALSE)
}

\seealso{
\code{\link{ExoticStatistics}} and \code{\link{decorate}}
}

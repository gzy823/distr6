% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DistributionDecorator_CoreStatistics.R
\name{skewness}
\alias{skewness}
\title{Distribution Skewness}
\usage{
skewness(object)
}
\arguments{
\item{object}{Distribution.}
}
\description{
Skewness of a distribution
}
\details{
The skewness of a distribution is defined by the third standardised moment of the
distribution,
\deqn{sk_X = E_X[(x - \mu)^3]/\sigma^3}
where \eqn{E_X} is the expectation of distribution X, \eqn{\mu} is the mean of the distribution and
\eqn{\sigma} is the standard deviation of the distribution.

If an analytic expression isn't available, returns error. To impute a numerical expression, use the
\code{\link{CoreStatistics}} decorator.
}
\section{R6 Usage}{
 $skewness()
}

\seealso{
\code{\link{CoreStatistics}} and \code{\link{decorate}}
}

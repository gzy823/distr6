% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DistributionDecorator_ExoticStatistics.R
\name{hazard}
\alias{hazard}
\title{Hazard Function}
\usage{
hazard(object, x1, log = FALSE)
}
\arguments{
\item{object}{Distribution.}

\item{x1}{Point to evaluate the hazard function at.}

\item{log}{logical, if TRUE then the (natural) logarithm of the hazard function is returned.}
}
\description{
The hazard function of a probability distribution is the risk of instantaneous event at
a point x.
}
\details{
The hazard function is defined analytically by
\deqn{h_X(x) = \frac{f_X}{S_X}}
where X is the distribution, \eqn{S_X} is the survival function and \eqn{f_X} is the pdf.

If an analytic expression isn't available, returns error. To impute a numerical expression, use the
\code{\link{ExoticStatistics}} decorator.
}
\section{R6 Usage}{
 $hazard(x1, log = FALSE)
}

\seealso{
\code{\link{ExoticStatistics}} and \code{\link{decorate}}
}

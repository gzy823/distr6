% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SDistribution_Lognormal.R
\name{Lognormal}
\alias{Lognormal}
\title{Lognormal Distribution}
\description{
Mathematical and statistical functions for the Lognormal distribution parameterised
with mean, sd, var, prec on the log or natural scale. The logmean/logvar parameterisation is defined
by the pdf,
\deqn{exp(-(log(x)-\mu)^2/2\sigma^2)/(x\sigma\sqrt(2\pi))}
where \eqn{\mu \epsilon R} is the log-mean and \eqn{\sigma > 0} is the log-standard deviation.
}
\details{
\code{cf} is omitted as no closed form analytic expression could be found. The \code{mgf} is
included but returns NaN as it is not defined.
}
\section{Constructor}{
 Lognormal$new(meanlog = 0, varlog = 1, sdlog = NULL, preclog = NULL,
                          mean = 1, var = NULL, sd = NULL, prec = NULL,
                          decorators = NULL, verbose = FALSE)
}

\section{Constructor Arguments}{

\tabular{lll}{
\strong{Argument} \tab \strong{Type} \tab \strong{Details} \cr
\code{meanlog} \tab numeric \tab mean of the distribution on the log scale. \cr
\code{varlog} \tab numeric \tab variance of the distribution on the log scale. \cr
\code{sdlog} \tab numeric \tab standard deviation of the distribution on the log scale. \cr
\code{preclog} \tab numeric \tab precision of the distribution on the log scale. \cr
\code{mean} \tab numeric \tab mean of the distribution on the natural scale. \cr
\code{var} \tab numeric \tab variance of the distribution on the natural scale. \cr
\code{sd} \tab numeric \tab standard deviation of the distribution on the natural scale. \cr
\code{precision} \tab numeric \tab precision of the distribution on the natural scale. \cr
\code{decorators} \tab Decorator \tab decorators to add functionality. See details. \cr
\code{verbose} \tab logical \tab if TRUE parameterisation messages produced.
}
}

\section{Constructor Details}{
 The Lognormal distribution can either be parameterised with variance,
standard deviation or precision on the natural or log scale.
If none are provided then meanlog/varlog parameterisation is used with varlog = 1, meanlog = 0.
sdlog is defined by
\deqn{sdlog = varlog^2}
preclog is defined by
\deqn{preclog = varlog^-1}
The variance on the natural scale is given by
\deqn{var = (exp(var) - 1)) * exp(2 * meanlog + varlog)}
and \eqn{sd}, \eqn{prec} defined analogously.
}

\section{Public Variables}{

 \tabular{ll}{
  \strong{Method} \tab \strong{Return} \cr
  \code{name} \tab Name of distribution. \cr
  \code{short_name} \tab Id of distribution. \cr
  \code{description} \tab Brief description of distribution. \cr
  \code{traits} \tab List: type, valueSupport, variateForm. \cr
  \code{package} \tab The package p/d/q/r are implemented in.
 }
}

\section{Public Methods}{

 \tabular{ll}{
  \strong{Accessor Methods} \tab \strong{Link} \cr
  \code{decorators()} \tab \code{\link{decorators}} \cr
  \code{valueSupport()} \tab \code{\link{valueSupport}} \cr
  \code{variateForm()} \tab \code{\link{variateForm}} \cr
  \code{type()} \tab \code{\link{type}} \cr
  \code{properties()} \tab \code{\link{properties}} \cr
  \code{support()} \tab \code{\link{support}} \cr
  \code{distrDomain()} \tab \code{\link{distrDomain}} \cr
  \code{symmetry()} \tab \code{\link{symmetry}} \cr
  \code{sup()}  \tab \code{\link{sup}} \cr
  \code{inf()} \tab \code{\link{inf}} \cr
  \code{dmax()}  \tab \code{\link{dmax}} \cr
  \code{dmin()} \tab \code{\link{dmin}} \cr
  \code{skewnessType()} \tab \code{\link{skewnessType}} \cr
  \code{kurtosisType()} \tab \code{\link{kurtosisType}} \cr

  \tab \cr \tab \cr \tab \cr

  \strong{Statistical Methods} \tab \strong{Link} \cr
  \code{pdf(x1, ..., log = FALSE, simplify = TRUE)} \tab \code{\link{pdf}} \cr
  \code{cdf(x1, ..., lower.tail = TRUE, log.p = FALSE, simplify = TRUE)} \tab \code{\link{cdf}}\cr
  \code{quantile(p, ..., lower.tail = TRUE, log.p = FALSE, simplify = TRUE)} \tab \code{\link{quantile.Distribution}} \cr
  \code{rand(n, simplify = TRUE)} \tab \code{\link{rand}} \cr
  \code{mean()} \tab \code{\link{mean.Distribution}} \cr
  \code{var()} \tab \code{\link{var}} \cr
  \code{prec()} \tab \code{\link{prec}} \cr
  \code{cor()} \tab \code{\link{cor}} \cr
  \code{skewness()} \tab \code{\link{skewness}} \cr
  \code{kurtosis(excess = TRUE)} \tab \code{\link{kurtosis}} \cr
  \code{entropy(base = 2)} \tab \code{\link{entropy}} \cr
  \code{mgf(t)} \tab \code{\link{mgf}} \cr
  \code{cf(t)} \tab \code{\link{cf}} \cr
  \code{pgf(z)} \tab \code{\link{pgf}} \cr
  \code{sd()} \tab \code{\link{sd}} \cr
  \code{median()} \tab \code{\link{median.Distribution}} \cr
  \code{iqr()} \tab \code{\link{iqr}} \cr

  \tab \cr \tab \cr \tab \cr

  \strong{Parameter Methods} \tab \strong{Link} \cr
  \code{parameters(id)} \tab \code{\link{parameters}} \cr
  \code{getParameterValue(id, error = "warn")}  \tab \code{\link{getParameterValue}} \cr
  \code{setParameterValue(lst, error = "warn")} \tab \code{\link{setParameterValue}} \cr

  \tab \cr \tab \cr \tab \cr

  \strong{Validation Methods} \tab \strong{Link} \cr
  \code{liesInSupport(x, all = TRUE, bound = FALSE)} \tab \code{\link{liesInSupport}} \cr
  \code{liesInType(x, all = TRUE)} \tab \code{\link{liesInType}} \cr
  \code{liesInDistrDomain(x, all = TRUE)} \tab \code{\link{liesInDistrDomain}} \cr

  \tab \cr \tab \cr \tab \cr

  \strong{Representation Methods} \tab \strong{Link} \cr
  \code{strprint()} \tab \code{\link{strprint}} \cr
  \code{print()} \tab \code{\link[base]{print}} \cr
  \code{summary(full = T)} \tab \code{\link{summary.Distribution}} \cr
  \code{plot()} \tab Coming Soon. \cr
  \code{qqplot()} \tab Coming Soon. \cr
  }
}

\examples{
# Many parameterisations are possible
Lognormal$new(var = 2, mean = 1)
Lognormal$new(meanlog = 2, preclog = 5)
Lognormal$new(meanlog = 4, sd = 2) # Note parameters must be on same scale (log or natural)

x <- Lognormal$new(verbose = TRUE) # meanlog = 0, sdlog = 1 default

# Update parameters
x$setParameterValue(list(meanlog = 3)) # When any parameter is updated, all others are too!
x$parameters()

# But you can only set parameters on the same scale, the below has no effect
x$setParameterValue(list(sd = 3))
x$setParameterValue(list(sdlog = 3)) # But this does

# p/d/q/r
x$pdf(5)
x$cdf(5)
x$quantile(0.42)
x$rand(4)

# Statistics
x$mean()
x$var()

summary(x)

}

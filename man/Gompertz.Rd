% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SDistribution_Gompertz.R
\name{Gompertz}
\alias{Gompertz}
\title{Gompertz Distribution}
\description{
Mathematical and statistical functions for the Gompertz distribution parameterised
with shape and scale. The Gompertz distribution is defined by the pdf,
\deqn{f(x) = \alpha\beta exp(x\beta)exp(\alpha)exp(-exp(x\beta)\alpha)}
where \eqn{\alpha, \beta > 0} are the shape and scale parameters respectively.

Mathematical and statistical functions for the Gompertz distribution parameterised
with shape and scale.
}
\details{
Unfortunately the Gompertz distribution is quite complex to deal with and as such no closed
form expression exist for its mathematical and statistical properties. Try decorating with
\code{\link{CoreStatistics}} for numerical results.
}
\section{Constructor}{
 Gompertz$new(shape = 1, scale = 1, decorators = NULL, verbose = FALSE)
}

\section{Constructor Arguments}{

\tabular{lll}{
\strong{Argument} \tab \strong{Type} \tab \strong{Details} \cr
\code{shape} \tab numeric \tab positive shape parameter. \cr
\code{scale} \tab numeric \tab positive scale parameter. \cr
\code{decorators} \tab Decorator \tab decorators to add functionality. See details. \cr
\code{verbose} \tab logical \tab if TRUE parameterisation messages produced.
}
}

\section{Constructor Details}{
 The Gompertz distribution is parameterised by default with
shape = 1 and scale = 1.
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
x <- Gompertz$new(shape = 2, scale = 3)

# Update parameters
x$setParameterValue(list(scale = 1))
x$parameters()

# p/d/q/r
x$pdf(5)
x$cdf(5)
x$quantile(0.42)
x$rand(4)

summary(x)

}

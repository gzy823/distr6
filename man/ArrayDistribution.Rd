% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Wrapper_ArrayDistribution.R
\name{ArrayDistribution}
\alias{ArrayDistribution}
\title{Product Array Distribution}
\description{
A special case product distribution where each independent distribution is the same
Distribution class but not necessarily with the same parameters.
}
\details{
Exploits the following relationships of independent distributions
\deqn{f_A(X1 = x1,...,XN = xN) = f_X1(x1) * ... * f_XN(xn)}
\deqn{F_A(X1 = x1,...,XN = xN) = F_X1(x1) * ... * F_XN(xn)}
where f_A/F_A is the pdf/cdf of the joint (product) distribution P and X1,...,XN are independent distributions.
}
\section{Constructor}{
 ArrayDistribution$new(distribution, paramList)
}

\section{Constructor Arguments}{

\tabular{lll}{
\strong{Argument} \tab \strong{Type} \tab \strong{Details} \cr
\code{distribution} \tab distribution \tab Distribution to wrap. \cr
\code{paramList} \tab list \tab List of parameters, see examples. \cr
}
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
  \code{wrappedModels(model = NULL)} \tab \code{\link{wrappedModels}} \cr
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
a = ArrayDistribution$new(Binomial, list(list(prob = 0.1, size = 2), list(prob = 0.6, size = 4),
                                        list(prob = 0.2, size = 6)))
a$pdf(x1=1,x2=2,x3=3)
a$cdf(x1=1,x2=2,x3=3)
a$rand(10)

}
\seealso{
\code{\link{ProductDistribution}}
}

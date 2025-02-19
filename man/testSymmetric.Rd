% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/assertions.R
\name{testSymmetric}
\alias{testSymmetric}
\alias{checkSymmetric}
\alias{assertSymmetric}
\alias{isSymmetric}
\title{assert/check/test/Symmetric}
\usage{
assertSymmetric(x)
checkSymmetric(x)
testSymmetric(x)
isSymmetric(x)

checkSymmetric(x)

assertSymmetric(x)

isSymmetric(x)
}
\arguments{
\item{x}{Distribution}
}
\value{
If check passes then \code{assert} returns invisibly and \code{test}/\code{check}/\code{is}
  return \code{TRUE}. If check fails, \code{assert} stops code with error, \code{check} returns
  an error message as string, \code{test}/\code{is} return \code{FALSE}.
}
\description{
Validation checks to test if Distribution is symmetric
}
\examples{
testSymmetric(Binomial$new()) # FALSE

}

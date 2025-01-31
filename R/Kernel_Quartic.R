#' @include SetInterval_SpecialSet.R ParameterSet.R
#-------------------------------------------------------------
# Quartic Kernel
#-------------------------------------------------------------
#' @title Quartic Kernel
#'
#' @description Mathematical and statistical functions for the Quartic kernel defined by the pdf,
#' \deqn{f(x) = 15/16(1 - x^2)^2}
#' over the support \eqn{x \epsilon (-1,1)}.
#'
#' @name Quartic
#'
#' @section Constructor: Quartic$new(decorators = NULL)
#'
#' @section Constructor Arguments:
#' \tabular{lll}{
#' \strong{Argument} \tab \strong{Type} \tab \strong{Details} \cr
#' \code{decorators} \tab Decorator \tab decorators to add functionality. \cr
#' }
#'
#' @inheritSection Kernel Public Variables
#' @inheritSection Kernel Public Methods
#'
#' @export
NULL
#-------------------------------------------------------------
# Uniform Kernel Definition
#-------------------------------------------------------------
Quartic <- R6::R6Class("Quartic", inherit = Kernel, lock_objects = F)
Quartic$set("public","name","Quartic")
Quartic$set("public","short_name","Quart")
Quartic$set("public","description","Quartic Kernel")
Quartic$set("public","var",function(){

})
Quartic$set("public","squared2Norm",function(){
  return(5/7)
})
Quartic$set("public","initialize",function(decorators = NULL){

  pdf <- function(x1){
    return(15/16 * (1-x1^2)^2)
  }
  cdf <- function(x1){
    return(15/16 * (x1 - 2/3*x1^3 + 1/5*x1^5 + 8/15))
  }
  quantile <- function(p){

  }

  super$initialize(decorators = decorators, pdf = pdf, cdf = cdf, quantile = quantile,
                   support = Interval$new(-1, 1), distrDomain = Reals$new(), symmetric = TRUE)
  invisible(self)
}) # QUANTILE & VAR MISSING

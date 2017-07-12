#' Contains the set of Importance Indexes of FOSL2 in a given set of rules.
#'
#' Within the \code{data_man} data collection, imp_FOSL2 is a list of 2 elements,
#' containing \code{imp} as a numeric vector in which the means of Importance
#' Indexes are represented, and \code{delta} as a data.frame in which the
#' variations of support, confidence and lift measures are reported.
#'
#' @docType data
#'
#' @usage data("data_man")
#'
#' @format An object of class \code{"list"}
#'
#' @keywords datasets
#'
#' @examples
#' # imp_FOSL2 is found in the data_man collection of datasets:
#' data("data_man")
#' head(imp_FOSL2$imp)
"imp_FOSL2"
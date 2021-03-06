% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rulesTF0.R
\name{rulesTF0}
\alias{rulesTF0}
\title{Substitutes the presence of a transcription factor (or a combination of
transcription factors) in the left-hand-side of a set of rules,
with its absence.}
\usage{
rulesTF0(TFi, sub_rules, all_rules, data, RHS)
}
\arguments{
\item{TFi}{a string, or a string vector: transcription factor
(or combination of transcription factors) to remove from the set of rules.}

\item{sub_rules}{a data.frame with a subset of rules containing \code{TFi},
and their quality measures of support, confidence and lift (i.e., rules from
which the user wants to remove \code{TFi}).}

\item{all_rules}{a data.frame with a set of all the rules and their quality
measures of support, confidence and lift, to be considered for the search of
the obtained rules and their quality measures.}

\item{data}{a GRanges object which contains the Indicator of presence matrix
i.e., a matrix with 1 and 0 values representing presence or absence,
respectively (in case other values different from 0 are present, all of them
are considered as representing presence).}

\item{RHS}{the right-hand-side of the considered association rules.}
}
\value{
A data.frame with all the rules in the set \code{sub_rules}
in which the transcription factor (or combination of transcription factors)
\code{TFi} is absent, and their quality measures of support, confidence
and lift.
}
\description{
The function substitutes the presence of a given transcription factor
\code{TFi} (or a combination of transcription factors) chosen by the
user with its absence, in the subset of relevant association rules
extracted with the function \code{\link{rulesTF}}. Then it searches
for the obtained rules and their quality measures of
support, confidence and lift in the set of most relevant associations
extracted with the function \code{\link{rulesGen}}.
A rule is searched in all the association
rules generable from the considered dataset using the function
\code{\link{search_rule}}.
}
\examples{
# Load r_TEAD4 and r_FOSL2 from the data_man collection of datasets:
data("data_man")
# Load MCF7_chr1:
data("MCF7_chr1")


r_noFOSL2 <- rulesTF0("FOSL2=1", r_FOSL2, r_TEAD4, MCF7_chr1, "TEAD4=1")

}

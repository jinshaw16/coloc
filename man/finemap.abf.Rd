% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/claudia.R
\name{finemap.abf}
\alias{finemap.abf}
\title{Bayesian finemapping analysis}
\usage{
finemap.abf(dataset, p1 = 1e-04)
}
\arguments{
\item{dataset}{a list with the following elements
\describe{

\item{pvalues}{P-values for each SNP in dataset 1}

\item{N}{Number of samples in dataset 1}

\item{MAF}{minor allele frequency of the variants}

\item{beta}{regression coefficient for each SNP from dataset 1}

\item{varbeta}{variance of beta}

\item{type}{the type of data in dataset 1 - either "quant" or "cc" to denote quantitative or case-control}

\item{s}{for a case control dataset, the proportion of samples in dataset 1 that are cases}

\item{sdY}{for a quantitative trait, the population standard deviation of the trait.  if not given, it can be estimated from the vectors of varbeta and MAF}

\item{snp}{a character vector of snp ids, optional. If present, it will be used to merge dataset1 and dataset2.  Otherwise, the function assumes dataset1 and dataset2 contain results for the same SNPs in the same order.}

}

Some of these items may be missing, but you must give
\itemize{
\item{always}{\code{type}}
\item{if \code{type}=="cc"}{\code{s}}
\item{if \code{type}=="quant" and \code{sdY} known}{\code{sdY}}
\item{if \code{type}=="quant" and \code{sdY} unknown}{\code{beta}, \code{varbeta}, \code{N}, \code{MAF}}
and then either
\item{}{\code{pvalues}, \code{MAF}}
\item{}{\code{beta}, \code{varbeta}}
}}

\item{p1}{prior probability a SNP is associated with the trait 1, default 1e-4}
}
\value{
a \code{data.frame}:
\itemize{
\item an annotated version of the input data containing log Approximate Bayes Factors and intermediate calculations, and the posterior probability of the SNP being causal
}
}
\description{
Bayesian finemapping analysis
}
\details{
This function calculates posterior probabilities of different
causal variant for a single trait.

If regression coefficients and variances are available, it
calculates Bayes factors for association at each SNP.  If only p
values are available, it uses an approximation that depends on the
SNP's MAF and ignores any uncertainty in imputation.  Regression
coefficients should be used if available.
}
\author{
Chris Wallace
}

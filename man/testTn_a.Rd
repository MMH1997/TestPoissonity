% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/TESTCN.R
\name{testTn_a}
\alias{testTn_a}
\title{Pgf Test for Poisson Distribution \eqn{Tna}}
\usage{
testTn_a(x, a, n.boot)
}
\arguments{
\item{x}{vector of nonnegative integers, the sample data.}
\item{n.boot}{number of bootstrap replicates.}
\item{a}{weight value}
}
\description{
    Performs the probability-generating function goodness-of-fit test of Poisson distribution with unknown parameter.
}
\value{The function \code{testTn_a} returns a list with class \code{htest} containing:
\item{}{Description of test.}
\item{data}{Description of data.}
\item{test statistic}{Value of test statistic.}
\item{p-value}{approximate p-value of the test.}
\item{mean}{sample mean.}
}

\details{The pgf test of Poissonity \eqn{Tna} was proposed by Treutler (1995). The test is based on the similarity between the empirical probability-generating function of the random variable \eqn{X} and the pgf of a Poisson distribution with parameter mean of \eqn{X}. The test statistic is a weighted similarity measure.

\eqn{T_{n,a} = \int_{0}^{1} [\bar{X}_{n} g_{n}(s) - g`_{n}(s)]^2 s^a ds}

\eqn{g_{n}(s)} denotes pgf of X.
         
         
    The test is implemented by parametric boostrap with \code{n.boot} replicates.
  }

\author{Manuel Mendez Hurtado \email{mmendezinformatica@gmail.com}}

\references{Gurtel, N., Henze, N. (2000) Recent and classical goodness-of-fit tests for the Poisson distribution \emph{Journal of Statistical Planning and Inference} Vol 90, 207-225 \url{https://www.sciencedirect.com/science/article/abs/pii/S0378375800001142} }

\examples{x <- rpois(20,2)
testTn_a(x, a = 3, n.boot = 500)
}

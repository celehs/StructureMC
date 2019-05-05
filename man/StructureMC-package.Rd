\name{StructureMC-package}
\alias{StructureMC-package}
\alias{StructureMC}
\docType{package}
\title{
Structured Matrix Completion
}
\description{
Current literature on matrix completion focuses primarily on independent sampling models under which the individual observed entries are sampled independently. Motivated by applications in genomic data integration, we propose a new framework of structured matrix completion (SMC) to treat structured missingness by design. Specifically, our proposed method aims at efficient matrix recovery when a subset of the rows and columns of an approximately low-rank matrix are observed. The main function in our package, smc.FUN, is for recovery of the missing block A22 of an approximately low-rank matrix A given the other blocks A11, A12, A21.
}

\author{
Yifu Liu, Anru Zhang, Tianxi Cai and T. Tony Cai

Maintainer: Yifu Liu (2012johnnyliu@gmail.com)
}
\references{
Cai, T., Cai, T. T., & Zhang, A. (2015). Structured Matrix Completion with Applications to Genomic Data Integration. \emph{Journal of the American Statistical Association}.
}


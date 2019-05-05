\name{mynorm}
\alias{mynorm}
\title{
mynorm
}
\description{
This function returns the spectral norm of a real matrix if type is 2. Otherwise, it returns the matirx norm of the "norm" function using LAPACK.
}
\usage{
mynorm(x, type = c("O", "I", "F", "M", "2"))
}

\arguments{
  \item{x}{
numeric matrix
}
  \item{type}{
character string, specifying the type of matrix norm to be computed. 
Details see norm function in R base.
}
}

\references{
Cai, T., Cai, T. T., & Zhang, A. (2015). Structured Matrix Completion with Applications to Genomic Data Integration. \emph{Journal of the American Statistical Association}, to appear.
}
\author{
Yifu Liu, Anru Zhang, Tianxi Cai and T. Tony Cai,
}

\seealso{
 norm	
}

\examples{
A = matrix(rnorm(10, mean = 0, sd = 0.1), 10, 10)
mynorm(A, "2")
mynorm(A, "O")

}

\keyword{ structure }
\keyword{ matrix }
\keyword{ completion }
\keyword{ Genomic }


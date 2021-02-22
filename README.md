
# StructureMC: Structured Matrix Completion

## Overview

Current literature on matrix completion focuses primarily on independent
sampling models under which the individual observed entries are sampled
independently. Motivated by applications in genomic data integration, we
propose a new framework of structured matrix completion (SMC) to treat
structured missingness by design. Specifically, our proposed method aims
at efficient matrix recovery when a subset of the rows and columns of an
approximately low-rank matrix are observed. The main function in our
package, `smc.FUN`, is for recovery of the missing block A22 of an
approximately low-rank matrix A given the other blocks A11, A12, A21.

## Installation

Install stable version from CRAN:

``` r
install.packages("StructureMC")
```

Install development version from GitHub:

``` r
# install.packages("remotes")
remotes::install_github("celehs/StructureMC")
```

## Citation

Cai, T., Cai, T. T., & Zhang, A. (2015). Structured Matrix Completion
with Applications to Genomic Data Integration. Journal of the American
Statistical Association.

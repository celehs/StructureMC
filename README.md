# StructureMC
## Structured Matrix Completion
Current literature on matrix completion focuses primarily on independent sampling models under which the individual observed entries are sampled independently. Motivated by applications in genomic data integration, we propose a new framework of structured matrix completion (SMC) to treat structured missingness by design. Specifically, our proposed method aims at efficient matrix recovery when a subset of the rows and columns of an approximately low-rank matrix are observed. The main function in our package, smc.FUN, is for recovery of the missing block A22 of an approximately low-rank matrix A given the other blocks A11, A12, A21.

This is the R package `StructureMC' (Structured Matrix Completion) made and maintained by Yifu Liu(2012johnnyliu@gmail.com) and co-authored by Anru Zhang(anruzhang@stat.wisc.edu) and Tianxi Cai(tcai@hsph.harvard.edu).

# Installation

You can install the StructureMC R package but before doing so user have to install **devtools** (via install.packages("devtools")), install the package using the following command:



```r

library(devtools); install_github('YifuLiu/StructureMC')

```
Additionally, windows users might encounter difficulty to install the 'StructureMC' package with only the above command. You might need to install the following command instead:

```r
install.packages("devtools")) ##If you have not install 'devtools' yet
install.packages(c("devtools", "curl")) 
## install 'curl' is the part windows users might need to implement 
library(devtools); install_github('YifuLiu/StructureMC')

```



For more information on this project please reference the paper "Cai, T., Cai, T. T., & Zhang, A. (2015). Structured Matrix Completion with Applications to Genomic Data Integration. Journal of the American Statistical Association, to appear." 

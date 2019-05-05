mynorm = function(x, type){if(type=="2"){spectral.norm(x)}else{norm(x,type)}}

smc.FUN = function(A.mat, c_T, col_thresh,m1,m2){
    ## Structured Matrix Completion
    ## A11, A12, A21 are three observed blocks of MATRIX type
    ## c_T is the thresholding level, the default value is 2
    A11 = A.mat[1:m1,1:m2]; A12 = A.mat[1:m1,-(1:m2)]; A21 = A.mat[-(1:m1), 1:m2]
    if (missing("c_T")) {c_T = 2}
    if (missing("col_thresh")) {col_thresh = TRUE}
    p1 = dim(A11)[1] + dim(A21)[1]; p2 = dim(A11)[2] + dim(A12)[2];
    thresh1 = c_T*sqrt(p1/m1);
    thresh2 = c_T*sqrt(p2/m2)
    list = svd(rbind(A11, A21));
    list2 = svd(cbind(A11, A12));
    Z11 = t(list2$u) %*% A11 %*% list$v;
    Z12 = t(list2$u) %*% A12;
    Z21 = A21 %*% list$v;
    m = min(m1, m2);
    r = 0;
    if (col_thresh){
        for (s in m:1){
            if(!is.singular.matrix(as.matrix(Z11[1:s,1:s]))){
                if (mynorm(Z21[, 1:s] %*% ginv(Z11[1:s, 1:s]), "2") <= thresh1){
                    r = s; break;
                }
            }
        }
    }else{
        for (s in m:1){
            if(!is.singular.matrix(as.matrix(Z11[1:s,1:s]))){
                if (mynorm(ginv(Z11[1:s, 1:s]) %*% Z12[1:s,], "2") <= thresh2){
                    r = s; break;
                }
            }
        }
    }
    hatr = r;
    if (r >0 ){
        hatA22 = Z21[, 1:r] %*% ginv(Z11[1:r, 1:r]) %*% Z12[1:r, ]
    } else {
        hatA22 = matrix(0, p1 - m1, p2 - m2);
    }
    return(hatA22)
}

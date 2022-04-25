#### Matrices ####

# 2 dimensional vector
# must be all the same type 
# R will coerce to the most general data type

# Matrix Creation

# general formula for matrix
# matrix(vector, nrow, ncol, byrow = FALSE, dimnames = NULL)

v <- c(1:25)

m <- matrix(v)
m
matrix(v, nrow = 5)

# components are placed into matrix by columns

matrix(v, nrow = 5, byrow = TRUE)

# characters
as <- rep('a', 3)
bs <- rep('b', 3)

matrix(c(as, bs), ncol = 2)

# Logical
trues <- rep(TRUE, 3)
falses <- rep(FALSE, 3)

matrix(c(trues, falses), ncol = 3, byrow = TRUE)

# Possible, but...
matrix(v, nrow = 5, ncol = 2) # Warning! 

matrix(v, nrow = 4, ncol = 7) # Warning! 

# cbind and rbind 
f <- c(1:5)
f2 <- c(6:10)
mc <- cbind(f,f2)
mc
class(mc)

mr <- rbind(f,f2)
mr
class(mr)

## Special Matrices

# matrix with all rows and columns are filled by a single constant 'k'
# matrix(k, nrow, ncol)
matrix(3, 2, 3)

# Diagonal matrix
# entries outside main diagonal are zero
# diag(k, nrow, ncol)
diag(8, 3, 3)
diag(c(2,3,4),3,3)

# Identity matrix
# ones and zeros
diag(1,3,3)

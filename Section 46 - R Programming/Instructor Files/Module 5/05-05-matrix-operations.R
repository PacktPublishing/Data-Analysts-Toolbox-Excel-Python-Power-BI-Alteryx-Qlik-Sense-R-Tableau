#### Matrix Operations ####
set.seed(123)
n <- sample(1:100, 9)
matrix1 <- matrix(n, 3, 3)

# Inverse 
# this finds the reciprocal of the matrix where if matrix1 and its inverse are 
# multiplied they will result in an identity matrix which is basically 1 for 
# matrices
inv_matrix1 <- solve(matrix1)

matrix1 %*% inv_matrix1

# Transpose
# flip the rows and the columns
t(matrix1)

# %in% operator
# find out if any number is included in matrix1
18 %in% matrix1
43 %in% matrix1

# eigenvalues and eigenvectors
eigen(matrix1)

# Cholesky decomposition
chol(matrix1)

# QR decomposition
qr(matrix1)

# Singular decomposition
svd(matrix1)

# regression - solution to Ax = b
# solve(matrix1, b) 

# solved regression example here: 
# https://stats.idre.ucla.edu/r/library/r-library-matrices-and-matrix-computations-in-r/
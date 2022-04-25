#### Array Creation ####

# 1 Dimensional array (Vector)
v <- c(1:24)

uni_arr <- array(v)

# 2 dimensional array (Matrix)
mat_array <- array(v, dim = c(6,4,1))
mat_array

# 3 dimensional array 
arr <- array(v, dim = c(4,3,2))
arr

# changing the dimensions of a vector
dim(v) <- c(2,4,3)
v

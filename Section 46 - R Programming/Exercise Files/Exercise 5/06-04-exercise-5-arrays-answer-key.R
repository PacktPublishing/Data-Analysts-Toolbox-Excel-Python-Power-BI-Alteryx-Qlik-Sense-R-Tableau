#### Exercise 5 - Arrays ####

# 1. Create a multi-dimensional array that is not a matrix. 
v <- c(1:36)
ex_arr <- array(v, dim = c(4, 3, 3))
ex_arr


# 2. Make the following vector (e) 3 dimensional, name the dimensions, and list 
#       the attributes below this question in the script.
set.seed(123)
e <- sample(1:100, 30)
dim(e) <- c(2, 5, 3)
e_rnames <- c("a", "b")
e_cnames <- c("col1", "col2", "col3", "col4", "col5")
e_mnames <- c("matrix1", "matrix2", "matrix3")
dimnames(e) <- list(e_rnames, e_cnames, e_mnames)
e
# list attributes here: 
attributes(e)
# $dim
# [1] 2 5 3
# 
# $dimnames
# $dimnames[[1]]
# [1] "a" "b"
# 
# $dimnames[[2]]
# [1] "col1" "col2" "col3" "col4" "col5"
# 
# $dimnames[[3]]
# [1] "matrix1" "matrix2" "matrix3"

# 3. Find the sum of each column of your 3 dimensional array from question 2
apply(e, c(2), sum)

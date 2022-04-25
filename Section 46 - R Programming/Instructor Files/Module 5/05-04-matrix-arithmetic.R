#### Matrix Arithmetic ####

set.seed(123)
mar <- sample(1:25, 31, replace = TRUE)
mar <- c(0, mar)
mar <- c(mar, rep(0, 3))
length(mar)

set.seed(321)
apr <- sample(1:25, 30, replace = TRUE)
apr <- c(rep(0, 4), apr)
apr <- c(apr, 0)

weeks <- c("week 1", "week 2", "week 3", "week 4", "week 5")
  
days <- c("Sun", "Mon", "Tues", "Wed", "Thurs", "Fri", "Sat")

sales_mar <- matrix(mar, 5, 7, byrow = TRUE, dimnames = list(weeks, days))

sales_apr <- matrix(apr, 5, 7, byrow = TRUE, dimnames = list(weeks, days))
sales_mar
sales_apr

# Matrix Addition
sales_mar + sales_apr

# Matrix Subtraction
sales_mar - sales_apr

# Division
sales_mar / sales_apr

# Multiplication
# * = element-wise multiplication (scalar multiplication)
sales_mar * sales_apr

# %*% = dot (inner) product  
# the number of columns must equal the number of rows in the other
# it takes the first row matches it to the first column of the second matrix,
# multiplies them, then tries to find the sum
sales_mar %*% t(sales_apr)

# %o% = Outer product
# multiplies everything in the matrices together
t(sales_mar) %o% sales_apr

# %x% = Kronecker product - generalization of outer product
sales_mar %x% sales_apr


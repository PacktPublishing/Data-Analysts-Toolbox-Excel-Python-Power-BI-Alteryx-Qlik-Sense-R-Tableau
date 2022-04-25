#### Local vs Global Variables ####

# local variable - found within a function

# global variable - found in the global environment

# R will find the variable in the global environment if it is not found locally
func2 <- function() {
  print(x)
}
x <- 1
func2()

# R doesn't change global variable if it is changed inside a function
x <- 1 
func3 <- function() {
  x <- 2
  print(x)
}
func3()
x

# use double assignment if you want to change global variable
x <- 1
y <- 3
func4 <- function() {
  x <- 2
  y <<- 5
  print(paste(x,y))
}
func4()
x
y

# this is known as scoping - for more details on scoping visit
# https://www.stat.berkeley.edu/~statcur/Workshop2/Presentations/functions.pdf

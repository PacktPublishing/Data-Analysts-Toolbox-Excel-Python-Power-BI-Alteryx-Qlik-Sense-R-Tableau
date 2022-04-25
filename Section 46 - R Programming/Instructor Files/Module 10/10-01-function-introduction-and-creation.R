#### Function Creation ####

# we have been using a variety of functions already
sample()
seq()
sapply()
lapply()


# function_name <- function(arg_1, arg_2, ...) {
#   function body
# }

# simple user-defined example function
func <- function(x) {
  y <- x * x
  return(y)
}

func(2)
func(5)

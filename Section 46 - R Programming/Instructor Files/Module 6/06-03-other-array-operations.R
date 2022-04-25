#### Other Array Operations not mentioned with Matrices ####

# apply function
# apply(x, margin, function): 
  # x: vector
  # margin: how the function is to be applied - c(1) = rows; c(2) = columns; 
  #           c(1,2) = both
  # function: built-in or user-defined function to be applied over the array

v <- c(1:24)
rnames <- c("a", "b", "c", "d")
cnames <- c("col1", "col2", "col3")
mnames <- c("matrix1", "matrix2")
arr <- array(v, dim = c(4,3,2), dimnames = list(rnames, cnames, mnames))
arr

apply(arr, c(1), sum)





# append function
# append(vector, values, after=length(vector))
  # vector: the original vector to add on to
  # values: the new values to add on to the original vector
  # after: the index of where the values need to be added - the default is 
  # to go at the end of the array

append(v, c(100, 200, 300))
append(v, c(100, 200, 300), after = 5)

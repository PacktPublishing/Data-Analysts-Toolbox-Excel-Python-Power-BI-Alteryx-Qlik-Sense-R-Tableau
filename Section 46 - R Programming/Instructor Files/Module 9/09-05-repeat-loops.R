### Repeat loop ####

# repeat {
  # code block to be iterated

  # if (condition){
    # break
  # }
# }

# similar to while loop except for the placement of the break

value <- 3

repeat {
  print(value)
  value <- value - 1
  if (value < 0){
    break
  }
}
# MUST HAVE THE BREAK OTHERWISE YOUR CODE WILL GO ON FOREVER!

# don't do this:
repeat {
  print(value)
  value <- value - 1
}


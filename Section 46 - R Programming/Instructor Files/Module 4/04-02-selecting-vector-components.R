#### Vector component selection ####

greetings <- c("hi", "hello", "hola", "hey")
# single component indexing 
greetings[1]

# negative indexing
greetings[-1]

# multiple component indexing
greetings[c(1, 3)]

# cannot mix positive and negative indices
greetings[c(2, -1)]

# logical indexing
greetings[c(TRUE, FALSE, FALSE, TRUE)]

# numeric vectors
num_vec <- c(5, 9, 30, 0, -8)

# logical indexing
num_vec < 6
num_vec[num_vec < 6]

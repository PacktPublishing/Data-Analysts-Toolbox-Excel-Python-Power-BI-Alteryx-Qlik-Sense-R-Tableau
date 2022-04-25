#### Base R functions to use with Vectors ####

## mean, standard deviation, median, range, length, sorting ##

new_vector <- c(5, 20, 9, 46, 20, 11)

# mean
mean(new_vector)

# standard deviation
sd(new_vector)

# median
median(new_vector)

# range
range(new_vector)

# sorting
sort(new_vector)
new_vector[order(new_vector)]

# reverse order
sort(new_vector, decreasing = TRUE)
new_vector[order(-new_vector)]

rev(new_vector)

# length
length(new_vector)


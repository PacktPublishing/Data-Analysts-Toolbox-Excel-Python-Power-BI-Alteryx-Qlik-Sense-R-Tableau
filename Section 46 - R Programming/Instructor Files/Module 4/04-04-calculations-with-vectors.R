#### Calculations with Vectors ####

vect <- c(100, 45, 96, 89)

# Summing vector components
sum(vect)

# multiplying vector components by a value
vect * 2 # (+, -, *, /)


# Summing 2 vectors 
vect2 <- c(98, 62, 36, 55)
vect_sum <- vect + vect2
vect_sum
total_sum <- sum(vect + vect2)

# Multiplying 2 vectors
vect_prod <- vect * vect2

# Dividing 2 vectors
vect_quotient <- vect / vect2

# Component Recycling
short_vec <- c(2,0)
short_vec_prod <- vect * short_vec

short_uneven_vec <- c(2,3,0)
vect * short_uneven_vec # error

# using the rep function
rep(vect, times = 3)
rep(vect, each = 3)
rep(vect, times = c(3,1,5,9))

# combine 2 vectors 
comb_vects <- c(vect2, vect)

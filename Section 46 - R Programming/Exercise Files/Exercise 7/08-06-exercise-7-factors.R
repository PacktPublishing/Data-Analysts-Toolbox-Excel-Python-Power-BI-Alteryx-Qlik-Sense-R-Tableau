#### Exercise 7 - Factors ####

# 1. Create a factor with 4 levels.

# 2. Convert the following vector to a factor in chronological order and specify to
# R that there is an order to the levels
set.seed(123)
exercise_vector <- sample(month.name, 100, replace = TRUE)

# 3. Convert the following factor to numeric
set.seed(123)
samp <- sample(1:3, 15)
exercise_factor <- factor(samp)

# 4. Separate "Petal.Length" from "iris" dataset into groups with "pretty" labels,
#     test whether it is a factor, and print it as a table

#### Exercise 7 - Factors ####

# 1. Create a factor with 4 levels.
set.seed(123)
types <- c("A", "AB", "B", "O")
exercise_blood_type <- sample(types, 25, replace = TRUE)
factor(exercise_blood_type, levels = types)

# 2. Convert the following vector to a factor in chronological order and specify
#     to R that there is an order to the levels
set.seed(123)
exercise_vector <- sample(month.name, 100, replace = TRUE)

# ANSWER:
exercise_factor_chron <- factor(exercise_vector, levels = month.name, 
                                ordered = TRUE)

# 3. Convert the following factor to numeric
set.seed(123)
samp <- sample(1:3, 15, replace = TRUE)
exercise_factor <- factor(samp)

# ANSWER:
as.numeric(levels(exercise_factor))[exercise_factor]

# 4. Separate "Petal.Length" from "iris" dataset into groups with "pretty"
#       labels, test whether it is a factor, and print it as a table
pretty_labels <- cut(iris$Petal.Length, pretty(iris$Petal.Length))
is.factor(pretty_labels)
table(pretty_labels)

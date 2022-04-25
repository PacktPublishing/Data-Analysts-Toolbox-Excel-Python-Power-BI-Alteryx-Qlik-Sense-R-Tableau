#### Exercise 6 - Lists ####

# 1. Create a list with integer, logical, numeric (double), character, and a
#       vector.

my_list <- list(5, TRUE, 3.14, "hi", c("hello", "hey", "hiya"))

# 2. Name each of the elements in your list.

names(my_list) <- c("integer", "logical", "numeric", "character", "vector")

# 3. Select 18 from the following list.
ex_6_1 <- list("toy names" = c("Teddy Bear", "Blocks", "DVD Player", "Laptop"),
               "Number Sold" = c(10, 18, 121, 89))

# ANSWER: 
ex_6_1[["Number Sold"]][[2]]

# 4. Combine your list from question 1, and the list from question 3.

combined <- c(my_list, ex_6_1)

# 5. Delete "Laptop" from the "ex_6_1" list
ex_6_1[["toy names"]][-4]

# 6. Add "Xbox" to the "toy_names" vector
ex_6_1[["toy names"]][5] <- "Xbox"

# 7. Convert "ex_6_1" to a vector, before you do, predict the data type of the new 
# vector. Then check to see if you were right

# Prediction: Character

# Answer:
unlist(ex_6_1)

# 8. Find the simplified answer of the mean of the following list (ex_6_2)
set.seed(123)
r1 <- sample(1:1000, 25)
r2 <- sample(1:10000, 50)
r3 <- sample(1000:20000, 25)
ex_6_2 <- list("a" = r1, "b" = r2, "c" = r3)

sapply(ex_6_2, mean)

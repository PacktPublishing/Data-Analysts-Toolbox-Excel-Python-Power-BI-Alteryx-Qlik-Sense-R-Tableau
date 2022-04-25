#### Exercise 6 - Lists ####

# 1. Create a list with integer, logical, numeric (double), character, and a vector.

# 2. Name each of the elements in your list.

# 3. Select 18 from the following list.
ex_6_1 <- list("toy names" = c("Teddy Bear", "Blocks", "DVD Player", "Laptop"),
               "Number Sold" = c(10, 18, 121, 89))

# 4. Combine your list from question 1, and the list from question 3.

# 5. Delete "Laptop" from the "ex_6_1" list

# 6. Add "Xbox" to the "toy_names" vector

# 7. Convert "ex_6_1" to a vector, before you do, predict the data type of the new 
# vector. Then check to see if you were right

# Prediction: 

# Answer:


# 8. Find the simplified answer of the mean of the following list (ex_6_2)
set.seed(123)
r1 <- sample(1:1000, 25)
r2 <- sample(1:10000, 50)
r3 <- sample(1000:20000, 25)
ex_6_2 <- list("a" = r1, "b" = r2, "c" = r3)



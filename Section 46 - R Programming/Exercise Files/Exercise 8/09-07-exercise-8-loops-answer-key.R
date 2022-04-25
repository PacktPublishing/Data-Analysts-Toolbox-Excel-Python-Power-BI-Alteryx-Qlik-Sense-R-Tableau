#### Exercise 8 - Loops ####

# 1. Make a random value return "Yes! That is right" if it is equal to 35, and 
#       "Sorry, try again" if the random value is not 35. 
r_value <- sample(33:36, 1)
if (r_value == 35){
  print("Yes! That is right!")
} else {
  print(c("you tried: ", r_value, "Sorry, try again"))
}

# 2. Using a for loop, print each value of the following vector on separate lines.
set.seed(123)
ex_9_1 <- sample(1:500, 10)
for (i in ex_9_1) {
  print(i)
}

# 3. Using "ex_9_1" from above, create a for loop that only prints odd numbers.
for (i in ex_9_1){
  if ((i %% 2) != 0) {
    print(i)
  }
}


# 4. Create a while loop that counts down from a random number to zero and prints
#     that number during each iteration.
r_value <- sample(0:100, 1)
while (r_value >= 0){
  print(r_value)
  r_value <- r_value - 1
}


# 5. Use a repeat loop that prints out every multiple of 3 up to 99. 
iteration <- 1

repeat{
  mult <- iteration * 3
  if (mult > 99){
    break
  }
  print(mult)
  iteration <- iteration + 1
}


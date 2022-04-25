#### Exercise 9 - Functions ####

# 1. Write a function that given the individual input of 1 through 10 will give the
#     following output
# [1]    3   10   29   66  127  218  345  514  731 1002

question1_fx <- function(x) {
  v <- c()
  for (i in x) {
    y <- i^3 + 2
    v <- c(v, y)
  }
  return(v)
}
y <- 1:10
question1_fx(y)

# 2. Create a function with 2 parameters that puts any number to any power.

pwr <- function(a, b) {
  y <- a^b
  return(y)
}
pwr(2,9)

# 3. Change the above function to have the default of being squared.

squared_fx <- function(a, b = 2) {
  y <- a^b
  return(y)
}
squared_fx(2)
squared_fx(3, 8)
# 4. Create a function that converts a vector of temperatures in degrees Fahrenheit
#       into degrees Celcius
# Example vector of degrees Fahrenheit
fahrenheit <- c(75,  76,  54,  99,  77,  58,  78,  84,  57, 100,  56,  95,  68,
                85,  63,  66,  61,  64,  81,  59)

celcius <- c()
temp_conversion_fx <- function(v) {
  for (i in 1:length(v)) {
    celcius[i] <- round((v[i]-32)*(5/9), 2)
  }
  return(celcius)
}
temp_conversion_fx(fahrenheit)

# 5. Create a nested function by using your temperature conversion function from 
#     question 4 and find the mean and standard deviation of the temperature in 
#     degrees Celcius
mean_std_fx <- function(v) {
  cel <- temp_conversion_fx(v)
  m <- mean(cel)
  stdev <- sd(cel)
  result_list <- list("Mean" = m, "Standard Deviation" = stdev)
  return(result_list)
}
mean_std_fx(fahrenheit)




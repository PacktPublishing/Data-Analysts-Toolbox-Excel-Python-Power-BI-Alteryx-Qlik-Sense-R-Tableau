#### While Loops ####

# while (condition) {
  # code block to be iterated
# }

value <- 3

while (value >= 0){
  print(value)
  value <- value - 1
}

value <- sample(1:1000, 1)

while (value >= 0){
  if (value < 1){
    print("YAYYY! We Made It")
    break
  } else {
    print(value)
    value <- value - 1
  }
}

random_vector <- sample(1:1000, 25)
special_number <- 0
iteration_count <- 0

while (special_number != 23){
  for (i in random_vector){
    if (i == 23){
      print(c("Found!", "iterations = ", iteration_count))
      special_number <- i
      break
    } else {
      print(c(i, iteration_count))
    }
  }
  random_vector <- sample(1:1000, 25)
  iteration_count <- iteration_count + 1
}





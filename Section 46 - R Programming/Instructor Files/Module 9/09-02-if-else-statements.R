#### if-else statements ####

# if something happens: do this; else: do that

# if (it is sunny outside){
  # then bring your sunglasses
# } else if (it is raning outside) {
  # bring your umbrella & rainjacket
# } else {
  # bring your umbrella just in case
# }

# Examples

# with characters

char <- c("hello", "goodbye") 

if (char[1] == "hello"){
  print("goodbye")
} else {
  print("hi")
}

if (char[2] == "hello"){
  print("goodbye")
} else {
  print("hi")
}



value <- 3

if (value < 1){
  print(TRUE)
} else {
  print(FALSE)
}

if (value < 1){
  print("YAYYY! We Made It")
} else {
  value <- value - 1
}
value


# must be an easier way
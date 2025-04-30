phrase = "Hello, world!"

# Using Python Keywords
# 1. Check to see if the variable holds the None object. Print the result.
print(phrase is None)

# 2. Check if the string 'world' is in the variable. Print the result.
print('world' in phrase)

# 3. Check to see if the variable value is NOT a True object. Print the result.
print(phrase is not True)

# 4. Create a function that reassigns the variable globally to a string of your choice.
def reassign():
  global phrase
  phrase = 'Goodbye, world!'

reassign()
print(phrase)


# 1. False
# 2. True
# 3. True

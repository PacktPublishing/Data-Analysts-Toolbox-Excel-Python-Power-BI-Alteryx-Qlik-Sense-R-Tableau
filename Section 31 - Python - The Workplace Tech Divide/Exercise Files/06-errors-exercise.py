# Four errors exist in this script
# SyntaxError
# NameError
# TypeError(2)

# 1. Correct all four errors.
# 2. Use a try and except block for the error - TypeError: can only concatenate str (not "int") to str

def divide_by_two(num=0):
  try:
    total = num + 5
    return total
  except TypeError:
    print('Please provide integer for argument.')

# Don't change code below this line
print(divide_by_two(0))
print(divide_by_two())
print(divide_by_two('5'))

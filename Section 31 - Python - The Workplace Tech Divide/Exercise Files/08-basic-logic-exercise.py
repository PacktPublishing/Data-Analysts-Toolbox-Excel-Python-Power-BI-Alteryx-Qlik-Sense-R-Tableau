# Guess my favorite number

# Change the favorite number to what you like
favorite_number = 7

# 1. Put a try and except block around the statement below to handle someone entering a value that cannot be converted to an integer.
try:
  guess = int(input('Enter a guess: '))
except:
  print('Please enter a valid integer or float.')

# 2. If  number is greater than the favorite number print 'Guess was too high'
if guess > favorite_number:
  print('Guess was too high.')
# 3. Else, if the number is lower, print 'Guess is too low.'
elif guess < favorite_number:
  print('Guess is too low.')
# 4. Else print 'You guessed it!'
else:
  print('You guessed it!')


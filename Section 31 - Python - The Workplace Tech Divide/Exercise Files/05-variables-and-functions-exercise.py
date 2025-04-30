# YOUR NEW LUCKY NUMBER

def lucky_number_calculation(user_number):
  return user_number ** 5 // 2

# TODO: Save user input name to variable
user_name = input('Please enter your name: ')

# TODO: Save user input number to variable
user_number = input('Please enter a number: ')

# TODO: Convert the user number to an integer and reassign the variable
user_number = int(user_number)

# TODO: Perform calculation on number using math operator to get the users new lucky number and save to a variable
lucky_number = lucky_number_calculation(user_number)

# TODO: Using an f-string, print the users name and lucky number to console
print(f'Hello {user_name}, your new lucky number is {lucky_number}.')


# Turn the lucky number calculation into a function

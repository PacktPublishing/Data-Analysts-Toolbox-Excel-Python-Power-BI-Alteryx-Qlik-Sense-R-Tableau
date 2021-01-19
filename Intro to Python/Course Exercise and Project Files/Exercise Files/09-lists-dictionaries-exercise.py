ls = ['yellow', 'blue', 'green', 'red']

dt = {'Josh': None, 'Kathy': None, 'Joe': None, 'Ashley': None}

# 1. Assign the variables in the list as the dictionary values
# dt = {'Josh': 'yellow', 'Kathy': 'blue', 'Joe': 'green', 'Ashley': 'red'}
# Do not change code above this line

# Enter code here
for key in enumerate(dt.keys()):
  dt[key[1]] = ls[key[0]]


# Do not change code below this line
print(dt)
 

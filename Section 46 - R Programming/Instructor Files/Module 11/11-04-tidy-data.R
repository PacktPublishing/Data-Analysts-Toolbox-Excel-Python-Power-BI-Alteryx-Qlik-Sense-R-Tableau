#### Tidy Data ####

# Examples of tidying data

# first, the tidy dataset
table1
# every variable has its own column
# every observation has its own row
# every cell has a value

table2
# what do you notice? 
# how can we make this data tidy? 

# pivot_wider()
# column to take the variable names from: "type" which has cases and populations
# column that has the values: "count" 

table2 %>% pivot_wider(names_from = type, values_from = count)
# now we are back with our tidy form of data in table 1

# pivot_longer()

# sometimes names of columns are actually the values of variables like table4a:
table4a
# it has the years (1999, 2000) as column names

# let's pivot this data to make it tidy
# need 3 parameters:
  # 1. columns whose names are values not variables
  # 2. name of the variable = "year"
  # 3. name of the variable to move the values to = "cases" 

tidya <- table4a %>% pivot_longer(c(`1999`,`2000`), names_to = "year", 
                         values_to = "cases")

# take a look at table4b
table4b
# we can perform the same process to make this dataset tidy
tidyb <- table4b %>% pivot_longer(c(`1999`,`2000`), names_to = "year",
                                  values_to = "population")

# now lets join them to get our tidy dataset
left_join(tidya, tidyb)



#### Exercise 10 - DataFrames ####

# 1. Create a dataframe from 3 vectors.

# 2. Create a tibble from those 3 vectors by any method. (bonus if you can do all 4
#     methods!)

# 3. Convert the following untidy data to be in tidy format. 
air_data <- read_csv("AirPassengers_example.csv")

# 4. Using your tidy dataset from question 3, filter out the data to only include
#     when the number of passengers was between 150 and 250, then rename the 
#     the passengers column to "Number of Passengers"

# 5. Using the tidy dataset from question 3, sort the number of passengers in 
#       descending order (greatest to least)

# 6. From the mtcars dataset, select only mpg and horsepower (hp).
mtcars

# 7. From the presidents dataset, find the average Quarterly approval rating of 
#     the presidents each year. 
presidents_data <- read_csv("presidents_data.csv")

# 8. From the ToothGrowth dataset, find the average length for each supplement
ToothGrowth

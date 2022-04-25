#### Exercise 10 - DataFrames ####
library(tidyverse)

# 1. Create a dataframe from 3 vectors.
v1 <- c(1:5)
v2 <- c("a","b","c","d","e")
v3 <- c(20:24)

df <- data.frame(v1,v2,v3)
df
# 2. Create a tibble from those 3 vectors by any method. (bonus if you can do all 4
#     methods!)
tib <- as_tibble(df)
tib2 <- tibble(v1,v2,v3)
tib3 <- tribble(
  ~v1, ~v2, ~v3,
  1,   "a",  20,
  2,   "b",  21,
  3,   "c",  22,
  4,   "d",  23,
  5,   "e",  24
)
write_csv(tib2, "example.csv")
read_csv("example.csv")

# 3. Convert the following untidy data to be in tidy format. 
air_data <- read_csv("AirPassengers_example.csv")
air_data

air_data_tidy <- air_data %>% rename("year" = X1) %>% 
  pivot_longer(c("Jan":"Dec"), names_to = "Month", values_to = "numpassengers")
air_data_tidy

# 4. Using your tidy dataset from question 3, filter out the data to only include
#     when the number of passengers was between 150 and 250, then rename the 
#     the passengers column to "Number of Passengers"

air_data_tidy_fil <- air_data_tidy %>% 
  filter(numpassengers > 150 & numpassengers < 250) %>% 
  rename("Number of Passengers" = numpassengers)
min(air_data_tidy_fil$`Number of Passengers`)
max(air_data_tidy_fil$`Number of Passengers`)
# 5. Using the tidy dataset from question 3, sort the number of passengers in 
#       descending order (greatest to least)

air_data_tidy_sorted <- air_data_tidy %>% arrange(desc(numpassengers))
air_data_tidy_sorted

# 6. From the mtcars dataset, select only mpg and horsepower (hp).
mtcars

mtcars_selected <- mtcars %>% select(mpg, hp)
mtcars_selected
# 7. From the presidents dataset, find the average Quarterly approval rating of 
#     the presidents each year. 
presidents_data <- read_csv("presidents_data.csv")

averaged <- presidents_data %>% rowwise() %>%
  mutate(average_score = mean(c(Qtr1,Qtr2,Qtr3,Qtr4), na.rm = TRUE))

# 8. From the ToothGrowth dataset, find the average length for each supplement
tg_tib <- as_tibble(ToothGrowth)

avg_length <- tg_tib %>% group_by(supp) %>%
  summarize(average_length = mean(len))


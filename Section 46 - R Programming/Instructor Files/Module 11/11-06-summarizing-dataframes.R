#### Summarizing data ####

library(tidyverse)

gig_time <- tribble(
  ~h,   ~rate,
  1.25,   25,
  3.65,   35,
  1.71,   15,
  1.75,   35,
  4.52,   45,
  3.76,   25
)

# Mutate()
# you can use a variety of operators like multiplication:
gig_time %>% mutate(total = h * rate)

# also use +, -, /, ^, sum(), mean(), %/% (integer division), %% (remainder), 
# log(), lead(), lag(), cumsum (cumulative sum), cumprod(), cummax, cummin, 
# cummean(), logical comparisons, ranking: min_rank()


# to keep just the new column(s) use transmute
gig_time %>% transmute(total = h * rate)


# summarize()
gig_time %>% summarize(average_rate = mean(rate))
# really useful when we pair it with group_by()

gig_time %>% group_by(rate) %>% summarize(average_time = mean(h))

# if your dataset includes a bunch of missing values, you will need to use: 
# na.rm = TRUE

# grouped mutates

# install.packages("nycflights13")
library(nycflights13)
flights

flights_sml <- flights %>% select(year:day, ends_with("delay"), distance, 
                                  air_time)
# find the worst members of a group
worst <- flights_sml %>%
  group_by(year, month, day) %>%
  filter(rank(desc(arr_delay)) < 10)

# exporting data

write_csv(worst, "worst.csv")
View(worst)

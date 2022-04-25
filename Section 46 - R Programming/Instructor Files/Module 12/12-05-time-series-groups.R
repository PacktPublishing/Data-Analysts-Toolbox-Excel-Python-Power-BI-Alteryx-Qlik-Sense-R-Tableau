#### Time Series Groups ####
library(tictoc)
library(plotrix)

# tic("base R")
# rides <- read.csv("ride_data.csv")
# toc()
# base: 122.24 sec elapsed

tic("readr")
rides <- read_csv("ride_data.csv")
toc()
# readr: 53.91 sec elapsed

53.91/122.24
# 0.4410177

# trips by the number of hours in a day

hourly <- rides %>% group_by(hour = hour(datetime)) %>%
  summarize(Total = n())

head(hourly, 25)

# trips by hour and month

monthly_hourly <- rides %>% 
  group_by(month = month(datetime), hour = hour(datetime)) %>% 
  summarize(Total = n())


# trips by each day of the month

day_trips <- rides %>% group_by(day = day(datetime)) %>%
  summarize(Total = n())

# trips by day and month

day_month <- rides %>% group_by(month = month(datetime), day = day(datetime)) %>%
  summarize(Total = n())

# trips just by month

month_groups <- rides %>% group_by(month = month(datetime)) %>% 
  summarize(Total = n())

month_weekday <- rides %>%
  group_by(month = month(datetime), dayofweek = weekdays(datetime)) %>%
  summarize(Total = n())
per_hour_totals <- rides %>% group_by(year = year(datetime),
                                      month = month(datetime), 
                                      day = day(datetime),
                                      hour = hour(datetime)) %>%
  summarize(Total = n())

per_day_totals <- rides %>% group_by(year = year(datetime),
                                     month = month(datetime), 
                                      day = day(datetime),
                                     dayofweek = weekdays(datetime)) %>%
  summarize(Total = n())

average_hourofday <- per_hour_totals %>% group_by(hour) %>%
  summarize(average_num_rides = mean(Total), se = std.error(Total))

average_dayofweek <- per_day_totals %>% group_by(dayofweek) %>%
  summarize(average_num_rides = mean(Total), se = std.error(Total))


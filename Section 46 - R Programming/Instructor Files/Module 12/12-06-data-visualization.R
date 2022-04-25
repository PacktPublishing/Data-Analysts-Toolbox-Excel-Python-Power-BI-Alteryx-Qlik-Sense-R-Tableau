#### Data Visualization #### 
library(ggthemes)

source("12-05-time-series-groups.R")

# Trips per hour of the day
ggplot(hourly, aes(factor(hour), Total)) + 
  geom_bar( stat = "identity", fill = "blue")+
  theme(legend.position = "none") + xlab("Hour") + 
  ggtitle("Total Trips per Hour")

# Average trips per hour during the day 
ggplot(average_hourofday, aes(x = factor(hour), y = average_num_rides)) +
  geom_bar(stat = "identity") + geom_errorbar(aes(ymin = average_num_rides - se, 
                                                  ymax = average_num_rides + se)) + 
  ggtitle("Average Number of Trips Per Hour") + ylab("Average Number of Trips") +
  xlab("Hour")
  
# Trips per hour of the day separated into months
ggplot(monthly_hourly, aes(x = factor(hour), y = Total, fill = 
                             factor(month, labels = head(month.abb, -3)))) + 
  geom_bar( stat = "identity") + xlab("Hour") + 
  guides(fill = guide_legend("Month")) +
  ggtitle("Trips by Hour and Month")

# Trips For Each day of the month
ggplot(day_trips, aes(day, Total)) + 
  geom_bar( stat = "identity") +
  ggtitle("Trips Every Day")

# Trips by Day and Month
ggplot(day_month, aes(day, Total, fill = 
                        factor(month, labels = head(month.abb, -3)))) + 
  geom_bar(stat = "identity") +
  ggtitle("Trips by Day and Month") +
  guides(fill = guide_legend("Month")) +
  scale_fill_calc()

# Trips by month
ggplot(month_groups, aes(factor(month, labels = head(month.abb, -3)), Total, fill = 
                           factor(month, labels = head(month.abb, -3)))) + 
  geom_bar( stat = "identity") + xlab("Month") +
  ggtitle("Trips by Month") +
  guides(fill = guide_legend("Month")) +
  theme(legend.position = "none") +
  scale_fill_calc()

# Trips by Day and Month
ggplot(month_weekday, aes(factor(month, labels = head(month.abb, -3)), 
                          Total, fill = factor(dayofweek))) + 
  geom_bar( stat = "identity", position = "dodge") +
  ggtitle("Trips by Day and Month") + xlab("Month") +
  guides(fill = guide_legend("Weekday")) +
  scale_fill_calc()

days_week <- c("Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", 
               "Saturday")
# Average trips during the week
ggplot(average_dayofweek, aes(x = factor(dayofweek, levels = days_week), y = average_num_rides)) +
  geom_bar(stat = "identity") + geom_errorbar(aes(ymin = average_num_rides - se, 
                                                  ymax = average_num_rides + se)) + 
  ggtitle("Average Number of Trips Per Weekday") + ylab("Average Number of Trips") +
  xlab("Weekday")

### Really cool example I found online at:
# https://data-flair.training/blogs/r-data-science-project-uber-data-analysis/

data_2014 <- read_csv("2014_data.csv")
library(ggthemes)
min_lat <- 40.5774
max_lat <- 40.9176
min_long <- -74.15
max_long <- -73.7004
ggplot(data_2014, aes(x=Lon, y=Lat)) +
  geom_point(size=1, color = "blue") +
  scale_x_continuous(limits=c(min_long, max_long)) +
  scale_y_continuous(limits=c(min_lat, max_lat)) +
  theme_map() +
  ggtitle("NYC MAP BASED ON UBER RIDES DURING 2014 (APR-SEP)")
ggplot(data_2014, aes(x=Lon, y=Lat, color = Base)) +
  geom_point(size=1) +
  scale_x_continuous(limits=c(min_long, max_long)) +
  scale_y_continuous(limits=c(min_lat, max_lat)) +
  theme_map() +
  ggtitle("NYC MAP BASED ON UBER RIDES DURING 2014 (APR-SEP) by BASE")
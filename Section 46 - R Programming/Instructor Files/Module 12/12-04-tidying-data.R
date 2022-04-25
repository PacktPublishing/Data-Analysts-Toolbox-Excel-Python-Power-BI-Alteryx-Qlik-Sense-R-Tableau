#### Exploratory Data Analysis - Tidying Data ####

source("12-02-data-importing.R")

# joining dataset again
rides <- apr %>% full_join(aug) %>% full_join(jul) %>% full_join(jun) %>% 
  full_join(may) %>% full_join(may) %>% full_join(sep)

# take a look at rides again
rides

# let's first rename our Latitude and Longitude columns
rides <- rides %>% rename(Latitude = Lat, Longitude = Lon)
rides

# fix "Date/Time" to make it an actual datetime
library(lubridate)

rides <- rides %>% mutate(datetime = str_replace_all(`Date/Time`, "//*", "-")) %>%
  mutate(datetime = mdy_hms(datetime)) %>% select(-`Date/Time`)

rides

# join the 2015 dataset
janjune

rides <- rides %>% full_join(janjune, 
                             by = c("Base" = "Affiliated_base_num", 
                                    "datetime" = "Pickup_date")) %>% 
  select(datetime, base = Base)

rides

write_csv(rides, "ride_data.csv")

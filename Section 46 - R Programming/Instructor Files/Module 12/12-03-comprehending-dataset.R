#### Exploratory Data Analysis - Comprehending Dataset ####

library(tidyverse)
# apr <- read_csv("uber-raw-data-apr14.csv")
# aug <- read_csv("uber-raw-data-aug14.csv")
# jul <- read_csv("uber-raw-data-jul14.csv")
# jun <- read_csv("uber-raw-data-jun14.csv")
# may <- read_csv("uber-raw-data-may14.csv")
# sep <- read_csv("uber-raw-data-sep14.csv")
# janjune <- read_csv("uber-raw-data-janjune-15.csv")

## OR ##

source("12-02-data-importing.R")

apr
janjune

# join each of the datasets into a single dataset
rides <- apr %>% full_join(aug) %>% full_join(jul) %>% full_join(jun) %>% 
  full_join(may) %>% full_join(may) %>% full_join(sep) # %>% left_join(janjune)

write_csv(rides, "2014_data.csv")

# looking at the beginning of the dataset
rides

# looking at the bottom of the dataset
tail(rides)

# random sample in between
rides %>% sample_n(15)

#explicitly look at the structure
str(rides)

# summary
summary(rides)

unique(apr$Base)

# outliers
## Boxplot

#### Missing values??? ####
sum(is.na(rides))

library(visdat)

# vis_miss(rides)

# correlation of missing values between variables

# correlation heatmap between variables
# https:/r-charts.com/correlation




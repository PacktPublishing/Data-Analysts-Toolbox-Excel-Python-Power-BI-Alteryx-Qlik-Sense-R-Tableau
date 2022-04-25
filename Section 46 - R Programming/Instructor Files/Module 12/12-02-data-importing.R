#### New York City Uber Pickups ####
# from April to September 2014

# Step 1: 
# find the data! 

# uber pickups
# https://www.kaggle.com/fivethirtyeight/uber-pickups-in-new-york-city

# Load in your data
library(tidyverse)
apr <- read_csv("uber-raw-data-apr14.csv")
aug <- read_csv("uber-raw-data-aug14.csv")
jul <- read_csv("uber-raw-data-jul14.csv")
jun <- read_csv("uber-raw-data-jun14.csv")
may <- read_csv("uber-raw-data-may14.csv")
sep <- read_csv("uber-raw-data-sep14.csv")
janjune <- read_csv("uber-raw-data-janjune-15.csv")


apr


# Step 2: Form your question(s)

# 1. Is there a significant difference between the number of pickups between any of
# the days of the week?

# 2. Is there a significant difference between any hour of the day? 

# What are some other questions that you might be able to ask about this dataset? 

# Does the weather (rain/sun) effect the number of pickups? 
# Are there areas with significantly higher numbers of pickups during the day? 
# Are certain areas more popular for pickups at different times of the day/week/month?
# Are there any cycles in the data? 

# Your turn! 
#### Tibbles ####
# install.packages("tidyverse")

library(tidyverse)

# this is based upon the following vignette, if you would like to view the vignette:
# vignette("tibble")

# reading_df from the first video
names <- c("Mary", "Anna", "Emma", "Elizabeth", "Minnie", "Evelynn", "Lia",
           "Gracelyn", "Laura", "Lexi") 
pages_read <- c(158, 56, 186, 123, 72, 102, 184, 200, 83, 118)

book <- c("Harry Potter and the Sorcerer's Stone", "Anne of Green Gables", 
          "The Babysitters Club", "Matilda", "A Wrinkle in Time", 
          "Alice in Wonderland", "Where the Red Fern Grows", "Number the Stars",
          "To Kill a Mockingbird", "The Book Thief")

reading_df <- data.frame("Names" = names, "Pages Read" = pages_read, 
                         "Book" =  book, stringsAsFactors = FALSE)

# make it into a tibble
reading_tibble <- tibble("Names" = names, "Pages Read" = pages_read,
                         "Book" = book) 
    # no stringsAsFactors = FALSE

# doesn't adjust the column names
# doesn't use row.names()
# only recycles vectors of length 1

# dataframe
als_data <- read.csv('08-01-als-data.csv')
head(als_data)

# faster than as.data.frame()
as_tibble(als_data)

# just import it as a tibble (readr package - 10x faster!)
als_data <- read_csv('08-01-als-data.csv')
als_data

#### 3 differences ####

## Printing
# shows only first 10 rows and columns on one screen
tib_mtcars <- as_tibble(mtcars)
options(tibble.print_max = 15, tibble.print_min = 15)
tib_mtcars

# print all rows
options(tibble.print_max = Inf)
tib_mtcars

options(tibble.print_max = 10, tibble.print_min = 10)
# subsetting always returns another tibble
class(reading_df[, 1:2])
class(reading_df[, 1])

class(reading_tibble[, 1:2])
class(reading_tibble[, 1])

# Recycling 
# only values of length 1 are recycled
tibble(a = 1, b = 1:3)

# Error!
tibble(a = 1:2, b = 1:4)

data.frame(a = 1:2, b = 1:4)

# Error!
data.frame(a = 1:3, b = 1:4)

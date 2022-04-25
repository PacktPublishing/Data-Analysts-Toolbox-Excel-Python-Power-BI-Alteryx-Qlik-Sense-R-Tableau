#### DataFrames Creation ####

names <- c("Mary", "Anna", "Emma", "Elizabeth", "Minnie", "Evelynn", "Lia",
           "Gracelyn", "Laura", "Lexi") 
pages_read <- c(158, 56, 186, 123, 72, 102, 184, 200, 83, 118)

reading_df <- data.frame("Names" = names, "Pages_Read" = pages_read, 
                         stringsAsFactors = FALSE)
reading_df

#structure of dataset
str(reading_df)

# summary statistics and length/class/mode
summary(reading_df)

#single column
reading_df$Names

# ALS data
als_data <- read.csv('08-01-als-data.csv')
str(als_data)
summary(als_data)

# show a pop-up window of the dataframe for you to easily edit
edit(als_data)
edit(reading_df)

# head, tail functions
head(reading_df)
tail(reading_df)

# selecting elements from a dataframe are exactly the same as an array or matrix
# using [], [[]], $
reading_df[1, ] # first row
reading_df[[1]] # first column
reading_df$Names # names column
reading_df[[1]][2]
reading_df$Names[3]

# can also assign names to each row
rownames(reading_df) <- reading_df$Names
reading_df <- reading_df[-1]
reading_df

# How many pages did Laura read? 
reading_df["Laura",]


# you can also add rows and columns the same way with cbind and rbind
cbind(reading_df, "Book" = c("Harry Potter and the Sorcerer's Stone", 
                             "Anne of Green Gables", "The Babysitters Club",
                             "Matilda", "A Wrinkle in Time", 
                             "Alice in Wonderland", "Where the Red Fern Grows",
                             "Number the Stars", "To Kill a Mockingbird",
                             "The Book Thief"))
rbind(reading_df, c("Josephine", 112))

# dataframes are just the beginning - the most effective way to view data in R is
# through the tidyverse

#### Common Operations on Lists ####

counts <- list("Year" = c(2011, 2012, 2013, 2014), 
               "count" = c(686, 2802, 343, 3171), 
               "Location" = c("New York", "New Hampshire", "Mississippi",
                              "North Carolina"))

# converting into a vector
unlist(counts)

counts2 <- list("2011" = c(686, 2802, 343, 3171, 5653, 584, 2949, 1226, 1268, 
                           288, 190),
                "2012" = c(14730, 2512, 4694, 3112, 4364, 1091, 4685, 5409))
# lapply(X, FUN, ...)
lapply(counts2, mean)


# sapply(X, FUN, ..., simplify = TRUE, USE.NAMES = TRUE)
sapply(counts2, median)

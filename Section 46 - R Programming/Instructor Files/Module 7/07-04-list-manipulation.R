#### List Manipulation ####

freedom <- list("greeting" = "hello", "logical" = FALSE, "counts" = c(2,3,1), 
                "second_logical" = TRUE, "large_number" = 34, "double" = 3.2)
freedom

# adding an element to the list
freedom["goodbye"] <- "see ya"
freedom

# overwrite an element in the list (has to be a multiple of what is being replaced)
freedom[[2]] <- c("see you later" = "alligator")
freedom

# rename only one of the list names
names(freedom)[2] <- "named_vector"
freedom


# deleting an element from the list
freedom[2] <- NULL
freedom

# same thing, less permanent
freedom[-2]
freedom

# combining lists
piciformes <- list("picidae" = c("woodpeckers", " wrynecks", "piculets"),
                    "ramphastidae" = "toucans")
galbulidae <- list("galbulidae" = "jacamars")

piciformes <- c(piciformes, galbulidae)
# order matters
piciformes <- c(galbulidae, piciformes)


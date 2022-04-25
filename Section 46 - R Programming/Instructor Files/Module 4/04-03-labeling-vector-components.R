#### Naming Vector components ####

fruit_count <- c(apples = 3, bananas = 10, papayas = 2)
fruit_count <- c(apples = 3L, bananas = 10L, papayas = 2L)
fruit_count
is.vector(fruit_count)
typeof(fruit_count)


# indexing
fruit_count["apples"]

fruit_count[apples] # Careful! Error! 

fruit_count2 <- c(5, 7, 9)
fruit_count2 <- setNames(fruit_count2, c("apples","bananas","papayas"))

fruit_count3 <- c(4,1,10)
names(fruit_count3) <- c("apples","bananas","papayas")


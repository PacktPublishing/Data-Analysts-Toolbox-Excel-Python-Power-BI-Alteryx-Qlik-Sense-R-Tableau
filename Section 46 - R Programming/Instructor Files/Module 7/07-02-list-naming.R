#### Naming List Elements ####

freedom <- list("hello", FALSE, c(2,3,1), TRUE, 34, 3.2)
freedom

names(freedom) <- c("Character", "Logical", "Vector", "Logical", "integer", 
                    "double")
freedom
freedom$integer

new_list <- list("a" = c("o", "o", "o", "p", "s"), "b" = 5678, "c" = 
                   list("aa" = "hello", "bb" = 5), "d" = TRUE)
new_list
new_list$c$aa

new_list$c$aa

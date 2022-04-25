#### Matrix Modification ####
set.seed(123)
c <- sample(5:35, 9)

counts <- matrix(c, 3, 3)
counts

# modifying an element
counts[3, 1] <- 300
counts

# adding rows/columns
rbind(counts, c(100, 200, 300))
cbind(counts, "new" = c(290, 340, 580))

# deleting rows/columns
counts[-2, ]
counts[,-3]

# Dealing with NAs, NaNs and Inf
counts[1, 3] <- NA
counts[2, 1] <- Inf
counts[3, 3] <- NaN
counts

# remove all columns and rows with NAs/Inf
counts[!rowSums(!is.finite(counts)), ]
counts[, !colSums(!is.finite(counts)), drop = FALSE]

#replacing NAs, Inf, NaNs with a zero
counts[is.na(counts)] <- 0
counts

counts[!is.finite(counts)] <- 0
counts

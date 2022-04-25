#### Matrix Metrics and Naming ####

# Matrix dimensions

set.seed(123)
scores <- sample(50:100,12)

#create a set of random test scores assuming that we have a normal distribution
#from 50-100
test_scores <- matrix(scores,3,4)
 
# if the matrix is small enough, just take a look at the entire matrix may want
# to look at matrix for several reasons, if you are creating a matrix using a
# function
test_scores

# dimensions of matrix
dim(test_scores)

# number of rows
nrow(test_scores)

# number of columns
ncol(test_scores)

# total number of components in matrix = length
length(test_scores)
prod(dim(test_scores))

# Naming rows and columns
# Penelope, Jimmy, Maddie, Jack
# Test 1, 2, 3

rownames(test_scores) <- c("Test 1", "Test 2", "Test 3")

colnames(test_scores) <- c("Penelope", "Jimmy", "Maddie", "Jack")

test_scores

attributes(test_scores)

# Remove the names
unname(test_scores)

colnames(test_scores) <- NULL

attributes(test_scores)

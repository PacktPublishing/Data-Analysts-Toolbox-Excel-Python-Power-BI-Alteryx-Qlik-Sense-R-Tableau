#### Selecting Matrix Components #### 

set.seed(123)
scores <- sample(50:100,12)

test_scores <- matrix(scores,3,4, 
                      dimnames = list(c("Test 1", "Test 2", "Test 3"),
                                   c("Penelope", "Jimmy", "Maddie", "Jack")))
test_scores

class(test_scores)

# Accessing the first row - returned as a vector
vec_scores <- test_scores[1, ]
class(vec_scores)
is.vector(vec_scores)

test_scores["Test 1", ]

# last row
test_scores[nrow(test_scores), ]

# Return as a matrix: drop = FALSE
new_matrix <- test_scores[1, , drop = FALSE]
class(new_matrix)

# Accessing the first column
test_scores[ , 1]

# last column
test_scores[ , ncol(test_scores)]

### Accessing just one component ###
# score of Maddie's 2nd test
test_scores[2, 3]


# access element number if counting down each column
test_scores[[8]]
test_scores[8]

# using row and column names
test_scores["Test 2", "Maddie"]

# Submatrices
sub_scores <- test_scores[1:3, 1:2]
sub_scores

# all columns except the second
test_scores[, -2]

# OR

sub_scores2 <- test_scores[c(1,2,3), c(1,2)]

# Logical indexing
test_scores[c(TRUE, FALSE)]

# number of tests that scored an A
length(test_scores[test_scores > 90])

test_scores > 90


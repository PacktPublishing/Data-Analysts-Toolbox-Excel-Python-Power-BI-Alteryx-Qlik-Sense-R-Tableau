#### Vectors ####

# simplest data structure
# 1 dimensional
# group of similar objects
# components must be the same type
# if not - it will coerce them to be the same type

#### vector creation ####

# 1. single value
hi <- "hi"
is.vector(hi)

# 2. colon to create a sequence
vec1 <- 3:9
vec1
is.vector(vec1)

# 3. Seq operator
vec2 <- seq(1, 9, by=2)
vec2
is.vector(vec2)

# 4. c()
vec3 <- c(3, 4, 5, 10)
vec3
is.vector(vec3)

# what happens if...
vec4 <- c(3, "hi", 3)
vec4
is.vector(vec4)

vec5 <- c(0, TRUE, FALSE, 10)
vec5
is.vector(vec5)

vec6 <- c(TRUE, "hi", FALSE, 1, 4.533)
vec6
is.vector(vec6)

# http://eriqande.github.io/rep-res-web/lectures/atomic-data-types-and-coercion.html
## Q1. Write an R script to create a logical vector of length 12 that alternates between TRUE
#      FALSE.

# Solution :
Sol1 <- rep(x = c(TRUE, FALSE), times = 6)

## Q2. Write a R script that takes a numeric vector as input and returns a logical vector indicating
#      which elements are negative.

# Solution :
input.vector <- c(-100, 23, 45, 67, -99, 27, -23, 4, 0, -2, -556)
Sol2 <- input.vector < 0
# print(Sol2)


## Q3. Given two numeric vectors of equal length, write R code to check if they are element-wise 
#      equal and then output the indices where they differ using the which() function.

# Solution :
input.vect1 <- c(4, 1, 5, 12, 56, 133, 0, 23, 45, 2, 54, 2, 342, -23, 5)
input.vect2 <- c(4, 1, 5, 12, 41, 42, 34, 0, 12, 213, 54, 2, -342, 23, 5)
print(all(input.vect1 == input.vect2)) # Will Return TRUE if they are equal element wise otherwise FALSE.
print(which(x = (input.vect1 != input.vect2)))

## Q4. Create a 3×4 matrix from a given logical vector and display the result. Then, create another 
#      3×4 numeric matrix and perform an element-wise comparison between them.

# Solution :
rows <- c("R1", "R2", "R3")
cols <- c("C1", "C2", "C3", "C4")

logical.val.vect <- rep(x = c(TRUE, FALSE), times = 3, each = 2)
mat1 <- matrix(data = logical.val.vect, nrow = 3, ncol = 4, dimnames = list(rows, cols))

numeric.val.vect <- rep(x = c(0, 1, 2), times = 2, each= 2)
mat2 <- matrix(data = numeric.val.vect, nrow = 3, ncol = 4, dimnames = list(rows, cols))

print(mat1 == mat2)


## Q5. Demonstrate vector recycling by creating one vector of length 4 and another of length 10,
#      then perform an addition operation. Print the resulting vector.

# Solution :
vect.one <- c(23, 99, 09, 12)
vect.two <- 1:10
Sol5 <- vect.one + vect.two 


## Q6. Write R code that calculates the sum of all TRUE values in a given logical vector 
#      (using their numeric property where TRUE = 1 and FALSE = 0). 

# Solution :
some.vector <- rep(x = c(TRUE, FALSE, FALSE), times = 2, each = 3)
Sol6 <- sum(some.vector[some.vector])


## Q7. Given a numeric vector, write R code to extract all elements that are greater than 10 using 
#      logical sub-setting.

# Solution : 
vect.numeric <- c(12,-83,0,32,-1,-4,2,1,73,-12,9,-1,10,2,-43)
print(vect.numeric[vect.numeric > 10])


## Q8. For the string "Hello World! Welcome to R programming", write R code to count the number 
#      of characters (using nchar()) and extract the substring "R programming".

# Solution :
some.string <- "Hello World! Welcome to R programming"
size <- nchar(x = some.string)
print(size)
print(substr(x = some.string, start = size - 12, stop = size))




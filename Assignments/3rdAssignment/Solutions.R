## Q1. Write an R script to create a logical vector of length 12 that alternates between TRUE
#      FALSE.

# Solution :
Sol1 <- rep(x = c(TRUE, FALSE), times = 6)

## Q2. Write a R script that takes a numeric vector as input and returns a logical vector indicating
#      which elements are negative.

# Solution :
input.vector <- c(-100, 23, 45, 67, -99, 27, -23, 4, 0, -2, -556)
Sol2 <- input.vector < 0
print(Sol2)


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


## Q9. Write R code that concatenates the strings "Data", "Science", and "R" into a single string 
#      with hyphens (-) as separators.

# Solution :
Sol9 <- paste("Data", "Science", "R", sep = "-")


## Q10. Write an R script that demonstrates the difference between cat() and paste() by printing 
#       the same set of words using both functions with a custom separator.

# Solution :
# cat() - Function always return an output.
print( class(cat("Data", "Analysis" , "With" , "Python", sep = "+"))) # Will Return NULL and the string
print( class(paste("Data", "Analysis" , "With" , "Python", sep = "+"))) # Will Return class of data.


## Q11. Given the string "apple, apple, and apple", write R code that uses sub() to replace only the 
#       first occurrence of "apple" with "orange", and gsub() to replace all occurrences.

# Solution : 
ex.string <- "apple, apple, and apple"
sub.string <- sub(pattern = "apple", replacement = "orange", x = ex.string)
gsub.string <- gsub(pattern = "apple", replacement = "orange", x = ex.string)


## Q12. Convert the character vector c("male", "female", "male", "female") into a factor. Display the factor 
#       and its levels.

# Solution :
char.vect <- c("male", "female", "male", "female")
char.fact <- factor(x = char.vect)
print(char.fact)
print(levels(char.fact))


## Q13. Create a factor from the vector c("Jan", "Mar", "Feb", "Apr", "May", "Dec", "Nov") and order the factor 
#       to reflect the natural calendar order (January to December). Display the ordered factor.

# Solution :
some.vect <- c("Jan", "Mar", "Feb", "Apr", "May", "Dec", "Nov") 
lvl <- c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec")
cal.fact <- factor(x = some.vect, levels = lvl, ordered = TRUE)
print(cal.fact)


## Q14. Given a factor vector of genders (e.g., gender <- factor(c("male", "female", "female", "male", "female"))), 
#       write R code to extract only the entries corresponding to "female".

# Solution :
gender <- factor(x = c("male", "female", "female", "male", "female", "male", "female", "female", "female", "male"))
print(gender[gender == "female"])
print(which(x= gender == "female"))


## Q15. Write a function that takes a numeric vector and bins the data into three categories: "Low", "Medium",
#       and "High". Use the cut() function and return the resulting factor.

# Solution :
vect1 <- c(15, 45, 55, 32, 21, 90, 100, 80, 71) 
bin <- c(0, 30, 70, 100)
lbl <- c("Low", "Medium", "High")
Sol15 <- cut(x = vect1, breaks = bin, labels = lbl, include.lowest = TRUE, Right = FALSE)
print(Sol15)


## Q16. Create a logical vector and demonstrate the use of the any() and all() functions. Explain, via comments, 
#       a scenario where any() returns TRUE but all() returns FALSE.

# Solution :
vect1.logical <- rep(x = TRUE, times = 10)
vect2.logical <- c(FALSE, FALSE, TRUE, FALSE, FALSE)
print(any(vect2.logical))
print(all(vect1.logical))

# Scenario
logical.vect <- rep(x = c(TRUE, FALSE, FALSE, TRUE), times = 2, each = 2)
print(any(logical.vect)) # Returns TRUE when any value inside the given vector is TRUE, and not 0 and "".
print(all(logical.vect)) # Returns TRUE when all values inside the given vector is TRUE, and not 0 and "".


## Q17. Given two logical vectors, write R code to perform element-wise logical AND, OR, and NOT operations. 
#       Print the results.

# Solution : 

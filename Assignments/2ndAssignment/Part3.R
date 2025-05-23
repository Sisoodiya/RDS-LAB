## Q10. Create and store a three-dimensional array with six layers of a 4 x 2 matrix, filled 
#      with a decreasing sequence of values between 4.8 and 0.1 of the appropriate length.

# Solution :
Rnames <- c("R1" , "R2" , "R3" , "R4")
Cnames <- c("C1" , "C2")
Lnames <- c("L1" , "L2" , "L3" , "L4" , "L5" , "L6")

Matrix <- array(data = seq(from = 4.8 , to = 0.1 , length.out = 4*2*6) , dim = c(4,2,6) , dimnames = list(Rnames, Cnames , Lnames))


## Q11. Extract and store as a new object the fourth- and first-row elements, in that order, of 
#       the second column only of all layers of (10.).

# Solution :
Rnames2 <- c("R1" , "R2")
Cnames2 <- c("C1" , "C2" , "C3" , "C4" , "C5" , "C6")

store <- matrix(data = Matrix[c(4,1) , 2 , ] , nrow = 2 , ncol = 6 , byrow = TRUE, dimnames = list(Rnames2 , Cnames2))


## Q12. Use a fourfold repetition of the second row of the matrix formed in (11.) to fill a new 
#       array of dimensions 2 x 2 x 2 x 3.

# Solution :
NewMatrix <- array(data = rep(x = store[2,] , times = 4) , dim = c(2,2,2,3) , dimnames = list(c("R1" , "R2") , c("C1" , "C2") , c("L1" , "L2") , c("Mat1" , "Mat2" , "Mat3")))


## Q13. Create a new array comprised of the results of deleting the sixth layer of (10.).

# Solution :
Lnames2 <- c("L1" , "L2" , "L3" , "L4" , "L5" )
NewArray <- array(data = Matrix[,,-6] , dim = c(4,2,5) , dimnames = list(Rnames , Cnames , Lnames2))


## Q14. Overwrite the second and fourth row elements of the second column of layers 1, 3, and 5 of
#       (13.) with -99.

# Solution :
-99 -> NewArray[c(2,4) , 2 , c(1,3,5)]


## Q15. Construct a 5 x 3 matrix filled column-wise with a sequence of numbers from 1 to 15. Verify
#       the matrix is correctly populated.

# Solution :
Matrix2 <- matrix(data = 1:15 , nrow = 5 , ncol = 3 , dimnames = list(c("R1" , "R2" , "R3" , "R4" , "R5") , c("C1" , "C2" , "C3")))
print(Matrix) # This will print the matrix and to confirm it filled column wise we can do.
print(Matrix2[,c(1,2,3)] == 1:15) # This will return matrix of TRUE of 5x3.


## Q.16. If you add a new row to the matrix created in question (15.), confirm its new dimensions.

# Solution :
Matrix3 <- rbind(Matrix2 , c(-1,-1,-1))
print(dim(Matrix3) == c(6,3))


## Q17. Sort the first column of the matrix from question (15.) in descending order. Keep other columns
#       unchanged.

# Solution :
Matrix2[,1] <- sort(x = Matrix2[,1] , decreasing = TRUE)


## Q18. What would the result be if you remove the second row and the third column from the sorted
#       matrix in question (17.)? Ensure the result remains a matrix.

# Solution :
print(class(Matrix2[-2,-3]))


## Q19. From the matrix in question (17.), create a new 2 x 2 matrix using the top four elements of 
#       the last column.

# Solution :
Sol19 <- matrix(data = Matrix2[1:4,3] , nrow = 2 , ncol = 2 , dimnames = list(c("R1" , "R2") , c("C1" , "C2")))
                

## Q20. Replace the elements at positions (2,1), (2,3), (5,1), and (5,3) in the matrix from question (17.)
#       with the average of the four corner elements of that matrix.

# Solution
sum(Matrix2[c(1,5), c(1,3)]) / 4 -> Matrix2[c(2,5) , c(1,3)]
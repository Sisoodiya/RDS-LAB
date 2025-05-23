## Q7 : Calculate the following:
matr1 <- matrix(data = c(1,2,2,4,7,6) , nrow = 3 , ncol = 2 , byrow = TRUE)
matr2 <- matrix(data = c(10,20,30,40,50,60) , nrow = 3 , ncol = 2 , byrow = TRUE)

# Solution :

print(2/7 * (matr1 - matr2))


## Q8. Store these two matrices:
matA <- matrix(data = c(1,2,7))
matB <- matrix(data = c(3,4,8))

# Which of the following multiplications are possible? For those that are, compute the result.

# Solution : 
# i. A.B
# print(matA %*% matB) # Error in matA %*% matB : non-conformable arguments

# ii. t(A).B 
print(t(matA) %*% matB)

# iii. t(B).(A.t(A))
print(t(matB) %*% (matA %*% t(matA)))

# iv. (A.t(A)) . t(B)
# print((matA %*% t(matA)) %*% t(matB)) # Error in (matA %*% t(matA)) %*% t(matB) : non-conformable arguments

# v. solve([(B.t(B)) + (A.t(A)) - 100 * diag(3)])
print(solve((matB %*% t(matB)) + (matA %*% t(matA)) - 100 * diag(3)))


## Q9 Given question
A <- diag(c(2,3,5,-1))
# Solution :
print((solve(A) %*% A - diag(4)) == (array(data = 0 , dim = c(4,4))))
## Q.21 

# Solution :
print(3 * (matrix(data = c(2,3,5,7) , nrow = 2, ncol = 2) - matrix(data = c(5,15,10,20) , nrow = 2 , ncol =2)))

## Q.22
C <- matrix(data = 1:4 , nrow = 2 , ncol = 2 , byrow = TRUE)
D <- matrix(data = c(5,6))

# Solution :
# i
print(C %*% D)
# ii
print(t(C) %*% D)
# iii
print(t(D) %*% (C %*% t(C)))


## Q. 23

# Solution :
B_ <- diag(c(1,2,-2))
print(solve(B_) %*% B_ - diag(3) == array(data = 0 , dim = c(3,3)) )


## Q. 24. Construct a three-dimensional array with four layers, each a 3 x 3 matrix filled with random
# numbers between 1 and 9. Then, extract the elements of the first row of the third column across all
# layers and store them as a new vector.

# Solution :
Sol24 <- array(data = 1:9 , dim = c(3,3,4) , dimnames = list(c("R1" , "R2" , "R3") , c("C1", "C2" , "C3") , c("L1" , "L2" , "L3" , "L4")))
Vector <- Sol24[1,3,]
print(Vector)
## Q1.Create and store a three-dimensional array with 6 layers of a 4 x 2 matrix,
#  filled with a decreasing sequence of values between 4.8 and 0.1 of the appropriate length.

# Parameters for the Row, Column and Layers names for the 3-D array of 6 layers with 4 x 2 matrix.

Rname <- c("R1" , "R2", "R3", "R4")
Cname <- c("C1" , "C2")
Lname <- c("L1","L2", "L3", "L4", "L5", "L6")

# Array initialization.

Array <- array(data = seq(from = 4.8 , to = 0.1 , length.out = 4*2*6 ) , dim = c(4,2,6) , dimnames = list(Rname , Cname , Lname))
print(Array) 
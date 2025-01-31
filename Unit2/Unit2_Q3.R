## Q3.Use a fourfold repetition of the second row of the matrix formed in (Q2) 
#   to fill a new array of dimensions 2 x 2 x 2 x 3.

# Array from Q1.
Rname <- c("R1" , "R2", "R3", "R4")
Cname <- c("C1" , "C2")
Lname <- c("L1","L2", "L3", "L4", "L5", "L6")

Array <- array(data = seq(from = 4.8 , to = 0.1 , length.out = 4*2*6 ) , dim = c(4,2,6) , dimnames = list(Rname , Cname , Lname))

# Solution to Q2 Array.

CnameObj <- c("C1", "C2", "C3", "C4", "C5", "C6")
RnameObj <- c("R1", "R2")

Object_Array <- matrix(data = c(Array[4,2,] , Array[1,2,]) , nrow = 2 , ncol = 6 , byrow = TRUE, dimnames = list(RnameObj , CnameObj))

# Solution.

New_Array <- array( rep(Object_Array[2,] , times =  4 ) , dim = c(2,2,2,3) , dimnames = list(c("R1" , "R2") , c("C1" ,"C2") , c("L1" , "L2") , c("Mat1" , "Mat2" , "Mat3")))
print(New_Array)
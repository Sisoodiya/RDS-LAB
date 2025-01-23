## Q3.Use a fourfold repetition of the second row of the matrix formed in (Q2) 
#   to fill a new array of dimensions 2 x 2 x 2.

# Array from Q1.
Rname <- c("R1" , "R2", "R3", "R4")
Cname <- c("C1" , "C2")
Lname <- c("L1","L2", "L3", "L4", "L5", "L6")

Array <- array(data = 1:48 , dim = c(4,2,6) , dimnames = list(Rname , Cname , Lname))

# Solution to Q2 Array.

RnameObj <- c("R1", "R2", "R3", "R4", "R5", "R6")
CnameObj <- c("C1", "C2")

Object_Array <- array(data = c(Array[4,2,] , Array[1,2,]) , dim = c(6,2) , dimnames = list(RnameObj , CnameObj))

# Solution.

New_Array <- array( rep(Object_Array[2,] , times =  4 ) , dim = c(2,2,2) , dimnames = list(c("R1" , "R2") , c("C1" ,"C2") , c("L1" , "L2")))
print(New_Array)
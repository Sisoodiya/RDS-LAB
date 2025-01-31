## Q2.Extract and store as a new object the fourth-row and first-row elements,
#  in the order, of the second column only of all layer of (1).

# Array from Q1.
Rname <- c("R1" , "R2", "R3", "R4")
Cname <- c("C1" , "C2")
Lname <- c("L1","L2", "L3", "L4", "L5", "L6")

# Array initialization.

Array <- array(data = seq(from = 4.8 , to = 0.1 , length.out = 4*2*6 ) , dim = c(4,2,6) , dimnames = list(Rname , Cname , Lname))

# Solution :

CnameObj <- c("C1", "C2", "C3", "C4", "C5", "C6")
RnameObj <- c("R1", "R2")

Object_Array <- matrix(data = c(Array[4,2,] , Array[1,2,]) , nrow = 2 , ncol = 6 , byrow = TRUE, dimnames = list(RnameObj , CnameObj))
print(Object_Array)
## Q2.Extract and store as a new object the fourth-row and first-row elements,
#  in the order, of the second column only of all layer of (1).

# Array from Q1.
Rname <- c("R1" , "R2", "R3", "R4")
Cname <- c("C1" , "C2")
Lname <- c("L1","L2", "L3", "L4", "L5", "L6")

# Array initialization.

Array <- array(data = 1:48 , dim = c(4,2,6) , dimnames = list(Rname , Cname , Lname))

# Solution :

RnameObj <- c("R1", "R2", "R3", "R4", "R5", "R6")
CnameObj <- c("C1", "C2")


Object_Array <- array(data = c(Array[4,2,] , Array[1,2,]) , dim = c(6,2) , dimnames = list(RnameObj , CnameObj))
print(Object_Array)
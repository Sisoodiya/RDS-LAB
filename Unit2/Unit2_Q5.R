## Q5.Overwrite the second and fourth row elements of the second column of layers 1,3 and 5 of (Q4) with -99.

# Array from Q1.
Rname <- c("R1" , "R2", "R3", "R4")
Cname <- c("C1" , "C2")
Lname <- c("L1","L2", "L3", "L4", "L5", "L6")

# Array initialization.
Array <- array(data = seq(from = 4.8 , to = 0.1 , length.out = 4*2*6 ) , dim = c(4,2,6) , dimnames = list(Rname , Cname , Lname))

# Solution of Q4:
Lname2 <-c("L1","L2", "L3", "L4", "L5")

New_Array2 <- array(data = Array[,,-6] , dim = c(4,2,5) , dimnames = list(Rname , Cname , Lname2))

# Solution of Q5:
-99 -> New_Array2[c(2,4),2,c(1,3,5)]
print(New_Array2)
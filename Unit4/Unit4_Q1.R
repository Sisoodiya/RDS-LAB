## Q1. Create a list that contains, in this order, a sequence of 20 evenly spaced numbers 
#    between -4 and 4; a 3 X 3 matrix of the logical vector c(F,T,T,T,F,T,T,F,F) filled column
#    wise; a character vector with the two strings "don" and "quixote"; and a factor vector
#    containing the observations c("LOW","MED","LOW","MED","MED","HIGH"). Then, Extract row 
#    elements 2 and 1 of columns 2 and 3, in that order, if the logical matrix.

# Solution :
val1.seq <- seq(from = -4, to = 4, length.out = 20)
val2.matrix <- matrix(data = c(F,T,T,T,F,T,T,F,F), nrow = 3, ncol = 3, dimnames = list(c("R1","R2","R3"), c("C1","C2","C3")))
val3.charVec <- c("don", "quixote")
val4.fact <- factor(x = c("LOW","MED","LOW","MED","MED","HIGH"))

val.list <- list(val1.seq, val2.matrix, val3.charVec, val4.fact)

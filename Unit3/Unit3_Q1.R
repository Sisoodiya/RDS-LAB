## Q1. Confirm the specific locations of elements equal to 0 in the 10 X 10 identity matrix I10.

# Solutions :
I10 <- diag(10)

# We know elements other than diagonal elements are 0 in an Identity matrix.
# This implies if i and j represents indexes of a matrix then for (i != j) Index 
# element equal to 0 for i = 1:10 and 1:10.
print(length(I10[I10 == FALSE]))
print(I10 == 0) # Every TRUE is the place where the element is equal to 0.

print(which(x = (I10 == 0), arr.ind = TRUE))

## Q4.Overwrite the existing object using the same sequence with the order reversed.

Object <- 1:20

# Overwriting the same vector using the sort() function since it return the vector.
Object <- sort(x = Object, decreasing = TRUE) 
print(Object)
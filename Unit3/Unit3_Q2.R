## Q2. Store this vector of 10 values: foo <- c(7,5,6,1,2,10,8,3,8,2). Then, do the following:
#  i. Extract the elements greater than or equal to 5, storing the result as bar.
#  ii. Display the vector containing those elements from foo that remain after omitting all 
#      elements that are greater than or equal to 5.
      

# Solution :
foo <- c(7,5,6,1,2,10,8,3,8,2)

# i.
bar <- foo[foo >= 5]
print(bar)
# ii.
print(foo[-which(x = (foo >= 5 ))])
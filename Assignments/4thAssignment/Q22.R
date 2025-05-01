## Q22. Create a data frame that recycles shorter vectors. Demonstrate and 
#       explain the behavior.

# Solution :- 

exampleframe <- data.frame(
  Name = c("Abhay", "Aman", "Ayush", "Anil", "Abhinav", "Abhinaw", "Mohan", "Aksh"),
  class = c("12A"),
  RollNo = 1:8
)

print(exampleframe) 
# In this example the class vector in the exampleframe is a shorter vector with one record.
# Here, R automatically recycles class vector to match the length of vector with most records
# by repeating its element : 12A. This is called vector recycling and since its a single record
# we will not get any warning/error. And we will not get any warning/error till the largest 
# vector is the multiple of the shorter vector.

# In this example we utilized this functionality for our good(not wiring it for all the entries 
# since all are from the same class). But now the data is not efficiently structured due to 
# redundancy.

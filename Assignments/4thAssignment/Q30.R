## Q30. Using logical vectors, subset a data frame to extract rows based on multiple 
#       conditions across different columns.

# Solution :- 
exampleframe <- data.frame(
  Name = c("Abhay", "Aman", "Ayush", "Anil", "Abhinav", "Abhinaw", "Mohan", "Aksh"),
  class = c("12A"),
  RollNo = 1:8,
  Marks = c(98, 88, 77, 72, 89, 90, 59, 48)
)

# One example of extraction of rows based on multiple conditions across different columns.
print(exampleframe[exampleframe$Marks > 70 & exampleframe$Marks < 90 & exampleframe$RollNo < 5, ])

## Q9. Find the number of rows in a given data frame.
# Solution :- 

some_dataframe <- data.frame(
  Name = c(
    "Abhay Singh", "Abhinav Shukla", "Abhinav Anand", "Ayush Dhruw", "Aman Yadav", 
    "Angad Srivastava", "Lovely Singh", "Bajrangi Bhaijaan", "ChulBul Pandey", "Harsh Sharma",
    "Jonty Rodes" , "Sanjay Singh", "Richard Feynman", "Christopher Nolan", "Bruce Wayne"
  ),
  Age = c(
    20, 20, 19, 21, 21, 18, 20, 21, 20, 18, 20, 21, 20, 21, 21
  )
)

# Since, number of rows are same as that of number of values of any of the attribute of the 
# data frame(ex. Name, Age)

print(length(
  x = some_dataframe$Name
))

# Or We can use nrow() function.
print(paste0("The number of Rows using nrows() in the data frame is ", nrow(some_dataframe)))

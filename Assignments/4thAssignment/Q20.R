## Q20. Extract all rows from a data frame where a character column has a specific value.
# Solution :-


some_dataframe <- data.frame(
  Name = c(
    "Abhay Singh", "Abhinav Shukla", "Abhinav Anand", "Ayush Dhruw", "Aman Yadav", 
    "Angad Srivastava", "Lovely Singh", "Bajrangi Bhaijaan", "ChulBul Pandey", "Harsh Sharma",
    "Jonty Rodes" , "Sanjay Singh", "Richard Feynman", "Christopher Nolan", "Bruce Wayne"
  ),
  Age = c(
    20, 20, 19, 21, 21, 18, 20, 21, 20, 18, 20, 21, 20, 21, 21
  ),
  Remarks = c(
    "A", "A", "A", "A", "B", "C", "A", "B", "FF", "C", "A", "A", "B", "FF", "A+"
  )
)

# To extract all rows 
print( some_dataframe[some_dataframe$Name == "Abhay Singh",])

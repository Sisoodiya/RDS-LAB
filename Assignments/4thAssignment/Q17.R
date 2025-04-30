## Q17. How would you extract multiple rows and columns simultaneously from a data frame?
#  Solution :- 

# Similar like matrix we can extract multiple column and rows by giving c() as input.
# Since dataframe[rows, column] then dataframe[c(), c()] will extract multiple rows and columns.

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

print(some_dataframe[c(2,4,6,1,4,2,2), c("Name", "Age")])
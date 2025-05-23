## Q18. Add a new column using the cbind() function to a data frame.
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


some_dataframe <- cbind(some_dataframe,
                  Fail = (some_dataframe$Remarks == "FF")      
                  )
# After adding the column
print(some_dataframe)

## Q10. Add a new row to an existing data frame.
# Solution :- 

# We can a new row in data frame using rbind() function.
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

some_dataframe <- rbind(some_dataframe, 
      data.frame(
        Name = "Stephen Hawkins" , 
        Age = "20"
      )
)

print(some_dataframe)
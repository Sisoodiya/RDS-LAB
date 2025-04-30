## Q13. Write code to convert a character column in a data frame to a factor.
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

converted_dataframe <- data.frame(
  Name = some_dataframe$Name,
  Age = some_dataframe$Age,
  stringsAsFactors = TRUE
)

print("Conveted data frame")
print(converted_dataframe)
print(converted_dataframe$Name)
print(class(converted_dataframe$Name))

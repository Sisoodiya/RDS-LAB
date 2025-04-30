## Q16. Demonstrate the difference between single bracket [ ] slicing and double bracket 
#       [[ ]] referencing with a suitable example.

# Solution :- 
# The single bracket slicing returns a list or data frame when used with a list or 
# data frame, respectively.
# The double bracket slicing returns the element itself (not a list) when used with a list.



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

my_list <- list(number = 34L, 
                string = "This is an example list.", 
                logical_vals = c(T, F, T, F, T), 
                some_list = list(vowels = c("A", "E", "I", "O", "U"), sum_infi = -1/12), 
                Identity_mat = diag(4)
)

print(class(some_dataframe[2])) # Extracts the 2nd element of the data frame as a data frame.
print(class(some_dataframe[[2]])) # Extracts the 2nd element which is numeric vector.
# print(class(some_dataframe$Age))

print(class(my_list[2])) # Extracts the 2nd element of the list as a list.
print(class(my_list[[2]])) # Extracts the 2nd element which is character vector.
# print(class(my_list$some_list))




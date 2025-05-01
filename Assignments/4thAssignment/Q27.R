## Q27. Create a data frame and write code to reorder its columns alphabetically by
#       column names.

# Solution :- 

example_data <- data.frame(
  Name = c("Abhay", "Harsh", "Arnav", "Abhinav", "Ayush", "Jai Keshav"),
  Rollno = c(1, 22, 10, 2, 11, 27),
  Marks = c(38, 39, 38, 25, 22, 38),
  branch = c("AI", "AI", "AI", "AI", "DS", "AI"),
  Ascore = c(T, T, T, F, F, T)
)

# The bellow snippet will arrange the data frame in the alphabetically by
# column names. R follows aAbBcCdD..... the reordered output will be in this form.
print(example_data[, sort(x = names(x = example_data))])

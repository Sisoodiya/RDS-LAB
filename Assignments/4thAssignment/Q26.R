## Q26. Create a function that accepts a data frame and returns a subset with only 
#       numeric columns.

# Solution :-

example_data <- data.frame(
  Name = c("Abhay", "Harsh", "Arnav", "Abhinav", "Ayush", "Jai Keshav"),
  Rollno = c(1, 22, 10, 2, 11, 27),
  Marks = c(38, 39, 38, 25, 22, 38),
  branch = c("AI", "AI", "AI", "AI", "DS", "AI"),
  Ascore = c(T, T, T, F, F, T)
)

num_col_extract <- function(dataframe){
  # This function accepts a data frame and returns a subset with only numeric columns.
  col_vect <- c()
  for(name in names(example_data)){
    if (class(example_data[[name]]) == "numeric"){
      col_vect <- c(col_vect, name)
    }
  }
  return(dataframe[, col_vect])
}

print(num_col_extract(example_data))
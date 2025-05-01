## Q. 29. Write a function that takes a data frame as input and adds a factor-type column 
#         derived from an existing numeric column.
# Solution :-

exampleframe <- data.frame(
  Name = c("Abhay", "Aman", "Ayush", "Anil", "Abhinav", "Abhinaw", "Mohan", "Aksh"),
  class = c("12A"),
  RollNo = 1:8,
  Marks = c(98, 88, 77, 72, 89, 90, 59, 48)
)

add_factor_column <- function(dataframe, col_name, new_col_name = "factor_col",val_breaks = 3 ,val_labels = NULL, is_ordered) {
  # This function 
  if(!col_name %in% names(dataframe)){
    print("Specific numeric col is not present.")
    return(NULL)
  }
  
  if (!is.numeric(dataframe[[col_name]])){
    print("Sepecific col must be numric!!.")
    return(NULL)
  }
  
  
  dataframe[[new_col_name]] <- cut(
    x = dataframe[[col_name]],
    breaks = val_breaks,
    labels = val_labels,
    ordered = is_ordered,
    include.lowest = TRUE
  )
  return(dataframe)
}

df_new <- add_factor_column(dataframe = exampleframe, 
                            col_name = "Marks", 
                            new_col_name = "Grades",
                            val_breaks = c(0, 38, 45, 65, 75, 85, 100),
                            val_labels = c("FF", "E", "D", "C", "B", "A"),
                            is_ordered = TRUE
          )
print(df_new)

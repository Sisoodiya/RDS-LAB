## Q25. Write R code that dynamically adds named elements to an existing list based on 
# user input.

# Solution :-

# This imports the function CollatzConjecture()
# The bellow is the absolute path to my CollatzConjecture.R file.
source("~/Documents/Github/RDS-LAB/Assignments/4thAssignment/Collatzconjecture.R")

conjecture <- CollatzConjecture(16)

example_list <- list(
  "This is a example list.",
  conjecture,
  matrix(
    data = c(1,0,0,0,1,0,0,0,1),
    nrow = 3,
    ncol = 3,
    byrow = TRUE,
    dimnames = list(c("row1", "row2", "row3"),
         c("col1", "col2", "col3"))
  ) %*% diag(c(2,3,5))
)

# print(example_list)

for(i in 1:length(x = example_list)){
  cat("Current element :\n")
  print(example_list[[i]])
  
  name <- readline(
    prompt = paste0("Enter a name for the element ", i , ": ")
  )
  names(example_list)[i] <- name
}

# Don't know why it changes the column names of the matrix
print(example_list)

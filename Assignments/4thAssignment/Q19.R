## Q19. How do you subset a data frame to exclude a particular column?
# Solution :- 
# Similar like we did it in matrix.
# for example :- 

df <- data.frame(
  Name = c("Alice", "Bob", "Charlie", "David"),
  Age = c(25, 30, 35, 40),
  Score = c(90, 85, 88, 92)
)

# If I want to exclude the 2nd column.
print(df[, -2])

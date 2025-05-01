## Q24. Create a list containing a matrix, a logical vector, and a string. Then, 
#       extract the second element of the logical vector.

some_list <- list(
  first = matrix(
    data = rep(x = c(T, F, T, T, F), length.out = 9),
    nrow = 3,
    ncol = 3,
    byrow = TRUE,
    dimnames = list(row_name = c("R1", "R2", "R3"), 
                    col_names = c("C1", "C2", "C3")
               )
  ),
  second = c(T, F, T, T, T, F, F, T, F),
  third = "This is a list."
)

print("Second element of the logical vector from the list created :- ")
# Both snippet bellow fetch 2nd element from the list.
print(some_list$second[2])
print(some_list[[2]][2])

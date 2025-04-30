## Q5. Name the elements of a list explicitly.
# Solution :- 


sample_list <- list(
  1:10, 
  matrix(data = 1:9, nrow = 3, ncol = 3, byrow = TRUE),
  rep(x = c(TRUE, FALSE, TRUE), by = 2),
  "A member of a list can itself be a list.",
  list(number = 2L, 
       string= "Some String", 
       logical_val = TRUE
  )
)

# We can name elements of a list explicitly using names() function.
names(x = sample_list) <- c("Numeric_vect" , "matrix", "logi_vect", "some_string", "some_list")
print("List with Named element :-")
print(sample_list)

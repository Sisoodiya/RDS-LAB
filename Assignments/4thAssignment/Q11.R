## Q11. Create a nested list where one element is itself a list containing a numeric
#        vector and a character vector.

# Solution :-
sol11 <- list(
  first = list(
    numeric_vect = c(1 ,2 ,3 ,4 ,2 , 10, 30),
    character_vect = c("Abhay", "Aman", "Dipa", "Shilpa")
  ),
  second = "This is a list with three element.",
  third = c(T, F, T, F, F, T)
)

print(paste0(
  "A nested list with three elements ", sol11
)) # We get a very interesting output here.

print(sol11)
## Q12. Extract the second element from the nested list created above.
# Solution :- 

sol11 <- list(
  first = list(
    numeric_vect = c(1 ,2 ,3 ,4 ,2 , 10, 30),
    character_vect = c("Abhay", "Aman", "Dipa", "Shilpa")
  ),
  second = "This is a list with three element.",
  third = c(T, F, T, F, F, T)
)

print("Second element from the list created :- ")
# Both snippet bellow fetch 2nd element from the list.
print(sol11$second)
print(sol11[[2]])

## Q6. Access a named element of a list using the $ operator.
# Solution :- 

my_list <- list(number = 34L, 
                string = "This is an example list.", 
                logical_vals = c(T, F, T, F, T), 
                some_list = list(
                  vowels = c("A", "E", "I", "O", "U"), 
                  sum_infi = -1/12
                ), 
                Identity_mat = diag(4)
)

# Some example cases
print(my_list$number)
print(my_list$Identity_mat)
print(my_list$some_list$sum_infi)

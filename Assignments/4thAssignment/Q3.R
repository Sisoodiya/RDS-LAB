## Q3. Extract the first element of a list using single brackets [ ].
# Solution :- 

my_list <- list(number = 34L, 
                string = "This is an example list.", 
                logical_vals = c(T, F, T, F, T), 
                some_list = list(vowels = c("A", "E", "I", "O", "U"), sum_infi = -1/12), 
                Identity_mat = diag(4)
                )

print(paste("The first element of the list 'my_list' is ", my_list[1]))

## Q4. Extract the second element from a list directly using double brackets [[ ]].
# Solution :- 

my_list <- list(number = 34L, 
                string = "This is an example list.", 
                logical_vals = c(T, F, T, F, T), 
                some_list = list(vowels = c("A", "E", "I", "O", "U"), sum_infi = -1/12), 
                Identity_mat = diag(4)
            )

print(paste0("The second element from a list 'my_list' using [[]] is '", my_list[[2]],"'"))

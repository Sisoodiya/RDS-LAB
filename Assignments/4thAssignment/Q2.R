## Q2. How do you find the length of a list named my_list?
# Solution :-

# We find the length of list using length() function. This Function returns 
# number of elements in the list here "my_list".
my_list <- list(number = 34L, string = "This is an example list.", 
                logical_vals = c(T, F, T, F, T), 
                some_list = list(vowels = c("A", "E", "I", "O", "U"), sum_infi = -1/12), 
                Identity_mat = diag(4))
cat("length of the list 'my_list' is ", length(my_list))

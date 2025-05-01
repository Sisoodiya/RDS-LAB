## Q23. Write R code to create a data frame from a list containing multiple vectors of 
#      unequal length, ensuring no data recycling occurs.

# Solution :-

data_list <- list(
  vowels = c("A", "E", "I", "O", "U"),
  seven_primes = c(2, 3, 5, 7, 11, 13, 17),
  planets = factor(
    x = c("Mercury", "Venus", "Earth", "Mars", "Jupyter", "Saturn", "Uranus", "Neptune"),
    levels = c("Mercury", "Mars", "Venus", "Earth", "Uranus", "Neptune", "Saturn", "Jupyter"),
    # labels = c("1st", "2nd", "3rd", "4th", "5th", "6th", "7th", "8th"),
    ordered = TRUE
  )
)

max_length <- max(lengths(data_list))

updated_list <- lapply(data_list, function(x) {
  length(x) <- max_length
  return(x)
})

# To avoid the error of different length of vectors in the data_list, we made a function
# that will make the length of all vectors in the list same as that of max length vector 
# and used lapply() function to apply this to all the elements of list.

# lapply() is similar function as that of sapply() but it returns list as output not a matrix
# or vector.

data_frame <- data.frame(updated_list, stringsAsFactors = FALSE)

# This file stores the code snippet for the function named "CollatzConjecture" that will take in an user input.
# This user input will be the number we want to make the Collatz conjecture of.
# The function will return an ordered factor of the conjecture.

add_to_factor <- function(factor_vec, new_elem) {
  # This function adds a new element in a predefined function and also updates its levels.
  new_elem <- as.character(new_elem)  # Convert to character to ensure proper level matching
  
  # Add new level if not present
  if (!(new_elem %in% levels(factor_vec))) {
    levels(factor_vec) <- c(levels(factor_vec), new_elem)
  }
  
  # Append the new element (as character)
  factor_vec <- c(factor_vec, factor(new_elem, levels = levels(factor_vec), ordered = TRUE))
  
  return(factor_vec)
}

CollatzConjecture <- function(input) {
  # This function will print the collatz conjecture of the given number.
  
  if (input <= 0) {
    # cat("The conjecture only works for positive integers.\n")
    return(NULL)
  }
  
  conjecture <- factor(as.character(input), levels = as.character(input), ordered = TRUE)
  
  # cat("Collatz Conjecture Sequence:\n")
  # cat(input, "\n")
  
  if (input == 1) {
    for (val in c(4, 2, 1)) {
      # cat(val, "\n")
      conjecture <- add_to_factor(conjecture, val)
    }
  } else {
    while (input != 1) {
      if (input %% 2 == 0) {
        input <- input / 2
      } else {
        input <- 3 * input + 1
      }
      # cat(input, "\n")
      conjecture <- add_to_factor(conjecture, input)
    }
  }
  
  # cat("\nFinal Factor:\n")
  # print(conjecture)
  return(conjecture)
}

# Get user input
# input_num <- as.integer(readline("Enter the number you want to make conjecture of: "))
# CollatzConjecture(input_num)

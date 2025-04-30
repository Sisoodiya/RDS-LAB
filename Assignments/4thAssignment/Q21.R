## 21. Write a function to merge two lists into one nested list without losing the 
#      original list structure.

# Solution :-

l1 <- list(
   five_primes = c(2, 3, 5, 7, 11),
   vowels = c("A", "E", "I", "O", "U"),
   I5 = diag(5)
)

l2 <- list(
  str = "This is second list.",
  data = data.frame(
    first = c("This", "is" ,"First" ,"element."),
    seond = c("This", "is", "Second" , "element.")
  )
)

merge_list1 <- function(lst1, lst2){
  # This function is used to merge two lists into one nested list.
  # lst1[[length(lst1) + 1]] <- lst2
  lst1$nested_list <- lst2
  return(lst1)
}

merge_list2 <- function(lst1, lst2){
  # This function is used to merge two lists into one nested list in other way.
  return(list(l1 = lst1,l2 = lst2))
}

l3 <- merge_list1(l1, l2)
l4 <- merge_list2(l1, l2)
print(l3)
print(l4)

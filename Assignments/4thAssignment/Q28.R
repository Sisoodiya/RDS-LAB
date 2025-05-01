## Q28. Demonstrate how to subset a nested list to extract a deeply nested numeric value.
# Solution :-

nestedList <- list(
  A = 1:10,
  B = rep(x = c(T,F,T), by = 2, times = 2),
  C = list(
    first = "This is a list inside a list. This structure is called nested list.",
    Name = "Abhay Singh Sisoodiya",
    Sch = "CSVTU-UTD",
    Bth = "2023-27",
    prog = "B.tech. (hons) CSE(AI)",
    spis = c(6.5, 8.1, 8)
  )
)


# The above is the example of a nested list

# Extracting numeric element of the element C 
print(nestedList$C$spis)
print(nestedList[["C"]][["spis"]])

# Extracting the 2nd element of the above extracted numeric vector.
print(nestedList$C$spis[2])
print(nestedList[["C"]][["spis"]][2])


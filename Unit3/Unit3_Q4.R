## Q4. Create a factor with levels of confidence as follows : Low for percentages[0,30];
#      Moderate for Percentages(30, 70] and High for Percentages (70, 100].

# Solution :
Data <- c(100,0,30,34,45,50,55,20,12,85,60,66,81,95,28,56)
br <- c(0,30,70,100)

labels <- c("Low","Moderate","High")
solution.fact <- cut(x = Data, breaks = br, labels = labels, include.lowest = TRUE)
print(solution.fact)
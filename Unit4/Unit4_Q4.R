##  Q4. Use your knowledge of handling character strings in R to extract all records
#       from my data frame that correspond to people whose names start with "S".

# Solution :
person <- c("Abhay", "Sanjay", "Anjali", "Priyanshi", "Abhishek", "Harshita", "Harsh", "Shivansh")
sex <- c("M", "M", "F", "F", "M", "F", "M", "M")
funny <- factor(x = c("low", "high", "med", "med", "med", "high", "high", "med"), 
                levels = c("low", "med", "high"),
                ordered = TRUE
)
age <- c(20, 19, 19, 19, 20, 20, 20, 20)

my.data.frame <- data.frame(person, sex, funny, age)

print(my.data.frame[substr(x = my.data.frame$person, start = 1, stop = 1) ==  "S", ])
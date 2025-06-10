## Q3 .Write a single line of code that will extract from my data frame just the names 
#      and ages of any records where the individual is female and has a level of funniness
#      equal to Med or High. 

# Solution :
person <- c("Abhay", "Sanjay", "Anjali", "Priyanshi", "Abhishek", "Harshita", "Harsh")
sex <- c("M", "M", "F", "F", "M", "F", "M")
funny <- factor(x = c("low", "high", "med", "med", "med", "high", "high"), 
                levels = c("low", "med", "high"),
                ordered = TRUE
        )
age <- c(20, 19, 19, 19, 20, 20, 20)

my.data.frame <- data.frame(person, sex, funny, age)

cat("Method one :- \n")
print(my.data.frame[my.data.frame$sex == "F" & 
                    my.data.frame$funny %in% c("med", "high"), 
    c("person", "age")])

cat("Method two :- \n")
print(subset(x = my.data.frame, sex == "F" & funny %in% c("med", "high"), 
                      select = c(person, age)))

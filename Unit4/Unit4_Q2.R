## Q2. Create and store this data frame as d frame with the fields of person, sex, funny in
#      your R work space. Append the two new records.

# Solutions :
person <- c("Abhay", "Sanjay", "Harsh", "Anjali", "Priyanshi", "Abhishek", "Harshita")
sex <- c("M", "M", "F", "F", "M", "F", "M")
funny <- c(FALSE, TRUE, FALSE, FALSE, FALSE, TRUE, TRUE)

d.frame <- data.frame(person, sex, funny)

new.records <- data.frame(
  person = c("Megha", "Abhinav", "Akansha", "Dipa"),
  sex = c("F", "M", "F", "F"),
  funny = c(TRUE, TRUE, TRUE, FALSE)
)

d.frame <- rbind(d.frame, new.records)
print(d.frame)

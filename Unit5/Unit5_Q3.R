## Q3. Write R code that will plot education on the x-axis and income on the y-axis, with 
#      both x- and y-axis limits fixed to be [0;100]. Provide appropriate axis labels. For 
#      jobs with a prestige value of less than or equal to 80, use a black * as the point 
#      character. For jobs with prestige greater than 80, use a blue @.

# Solutions :
education <- c(60, 70, 90, 85, 50, 95)
income <- c(55, 68, 80, 90, 45, 95)
prestige <- c(70, 85, 60, 90, 75, 88)
plot(
  x = education, y = income,
  xlim = c(0, 100), ylim = c(0, 100),
  xlab = "Education", ylab = "Income",
  type = "n", main = "Education v/s Income by Prestige"
)

points(education[prestige <= 80], income[prestige <= 80], pch = 8,
       col = "black"
)

points(education[prestige > 80], income[prestige > 80], pch = 64,
       col = "blue"
)

legend("topleft", legend = c("Prestige <= 80", "Prestige > 80"),
       pch = c(8, 64),
       col = c("black", "blue")
)

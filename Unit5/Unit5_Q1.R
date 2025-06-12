## Q1 .Create a database with the fields of weight, height, and sex, then create a plot of weight 
#      on the x-axis and height on the y-axis. Use different point characters or colours to distinguish 
#      between males and females and provide a matching legend. Label the axis and give the plot a title. 

# Solution :

weight <- c(60, 70, 55, 68, 80, 75)
height <- c(160, 175, 158, 170, 180, 165)
sex <- c("male", "female", "female", "male", "male", "female")

data <- data.frame(
  weight, height, sex
)

plot(x = data$weight, y = data$height,
     col = ifelse(data$sex == "male", "blue", "red"),
     pch = ifelse(data$sex == "male", 16, 17),
     xlab = "Weight(in kg)", ylab = "Height(in cm)",
     main = "Height vs Weight by Sex"
)

legend("topleft", legend = c("Male", "Female"), col = c("blue", "red"), pch = c(16, 17))

## Q2. Create a plot using ggplot2 for the same database consists of weight on the x-axis and height on the 
#      y- axis. Use different point characters or colors to distinguish between males and females and provide
#      a matching legend. Label the axes and give the plot a title.

# Solution :
library(ggplot2)
ggplot(data = data, aes(x = weight, y = height, col = sex, shape = sex)) +
  geom_point(size = 3) +
  labs(
    title = "Height vs Weight by Sex (ggplot2)",
    x = "Weight (in kg)",
    y = "Height (in cm)"
  ) +
 theme_light()

ggsave("~/Documents/GitHub/RDS-LAB/Unit5/Outputs/height_vs_weight_plot.png")

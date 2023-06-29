# Load the required library
library(ggplot2)

# Load the iris dataset
data(iris)

# Create the scatterplot
scatterplot <- ggplot(iris, aes(x = Sepal.Length, y = Petal.Length, color = Species)) +
  geom_point() +
  labs(x = "Sepal Length", y = "Petal Length", title = "Scatterplot of Sepal Length vs. Petal Length") +
  theme_minimal()

# Display the scatterplot
scatterplot

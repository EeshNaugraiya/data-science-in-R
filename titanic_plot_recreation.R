# Load the required library
library(ggplot2)

# Load the Titanic dataset
titanic <- read.csv("titanic.csv")

# Create the plot
final_plot <- ggplot(titanic, aes(x = Age, fill = factor(Survived))) +
  geom_histogram(binwidth = 5, alpha = 0.7) +
  facet_grid(. ~ Pclass) +
  labs(x = "Age", y = "Count", title = "Survival Distribution by Age and Passenger Class") +
  scale_fill_manual(values = c("#E69F00", "#56B4E9"), labels = c("Did Not Survive", "Survived")) +
  theme_minimal()

# Save the plot in the finalP object
finalP <- final_plot

# Display the final plot
final_plot

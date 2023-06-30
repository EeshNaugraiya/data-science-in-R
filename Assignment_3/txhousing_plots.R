# Load the required library
library(ggplot2)

# Load the txhousing dataset
data(txhousing)

# Check for missing values
missing_values <- sum(!complete.cases(txhousing))
print(paste("Number of missing values:", missing_values))

# Summary statistics
summary(txhousing)

# Visualize median house prices by year and month
price_plot <- ggplot(txhousing, aes(x = date, y = median)) +
  geom_line() +
  labs(x = "Year", y = "Median Price", title = "Median House Prices Over Time") +
  theme_minimal()

# Display the price plot
price_plot

# Visualize the relationship between median house price and volume
volume_price_plot <- ggplot(txhousing, aes(x = volume, y = median)) +
  geom_point() +
  labs(x = "Volume", y = "Median Price", title = "Relationship between Median Price and Volume") +
  theme_minimal()

# Display the volume-price plot
volume_price_plot

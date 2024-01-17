# Install and load ggplot2
install.packages("ggplot2")
library(ggplot2)

# Create a sample data frame
data <- data.frame(x = rnorm(100), y = rnorm(100))

# Scatter plot
print(ggplot(data, aes(x = x, y = y)) +
        geom_point() +
        ggtitle("Scatter Plot"))


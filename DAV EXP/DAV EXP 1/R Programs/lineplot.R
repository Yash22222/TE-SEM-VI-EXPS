# Create a sample data frame
data <- data.frame(x = 1:10, y = 1:10)

# Line plot
print(ggplot(data, aes(x = x, y = y)) +
        geom_line(color = "orange") +
        ggtitle("Line Plot"))


# Create a sample data frame
data <- data.frame(category = rep(c("A", "B", "C"), each = 30),
                   value = rnorm(90))

# Boxplot
print(ggplot(data, aes(x = category, y = value)) +
        geom_boxplot(fill = "lightgreen") +
        ggtitle("Boxplot"))


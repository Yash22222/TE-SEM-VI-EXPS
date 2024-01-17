# Create a sample data frame
data <- data.frame(category = c("A", "B", "C", "D"),
                   value = c(3, 8, 5, 12))

# Bar chart
print(ggplot(data, aes(x = category, y = value)) +
        geom_bar(stat = "identity", fill = "skyblue") +
        ggtitle("Bar Chart"))


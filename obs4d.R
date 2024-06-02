#plotting
library(ggplot2)

# Line chart
ggplot() +
  geom_line(aes(x = x, y = y), color = "blue", size = 2) +
  geom_point(aes(x = x, y = y), color = "blue", size = 3, shape = 16) +
  labs(title = "Line Chart Example", x = "X-axis Label", y = "Y-axis Label", subtitle = "Subtitle") +
  theme_minimal()

# Bar plot
ggplot(data = data.frame(categories, values), aes(x = categories, y = values, fill = categories)) +
  geom_bar(stat = "identity", color = "black") +
  labs(title = "Bar Graph Example", x = "Categories", y = "Values") +
  theme_minimal()

# Histogram
ggplot(data = data.frame(data), aes(x = data)) +
  geom_histogram(binwidth = 5, fill = "skyblue", color = "black") +
  labs(title = "Histogram Example", x = "Value", y = "Frequency") +
  xlim(20, 80) + ylim(0, 120) +
  theme_minimal()

# Scatterplot
ggplot(data = data.frame(x, y), aes(x = x, y = y)) +
  geom_point(color = "blue", size = 3, shape = 16, fill = "red") +
  labs(title = "Scatterplot Example", x = "X-axis Label", y = "Y-axis Label", subtitle = "Subtitle") +
  theme_minimal()

# Pie chart (not a typical ggplot chart, but can be simulated)
pie_data <- data.frame(categories, values)
ggplot(pie_data, aes(x = "", y = values, fill = categories)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y") +
  labs(title = "Pie Chart Example") +
  theme_void()

# Boxplot
ggplot(data, aes(x = Group, y = Value, fill = Group)) +
  geom_boxplot() +
  labs(title = "Boxplot Example", x = "Group", y = "Value") +
  ylim(0, 20) +
  theme_minimal()

# Heatmap
ggplot() +
  geom_tile(data = as.data.frame(data_matrix), aes(x = col_names, y = row_names, fill = ..value..)) +
  labs(title = "Heatmap Example", x = "X Values", y = "Y Values") +
  scale_fill_gradient(low = "white", high = "red") +
  theme_minimal()
# Sample data
x <- 1:10
y <- c(3, 5, 7, 9, 11, 10, 8, 6, 4, 2)

# Create a line chart
plot(x, y, type = "o", col = "blue", pch = 16, lty = 1, lwd = 2,
     main = "Line Chart Example", xlab = "X-axis Label", ylab = "Y-axis Label",
     xlim = c(0, 11), ylim = c(0, 12), 
     sub = "Subtitle",
     cex.main = 1.5, cex.lab = 1.2, cex.sub = 1,
     bg = "lightgray", cex = 1, 
     axes = TRUE, frame.plot = TRUE)

# Sample data
categories <- c("Category A", "Category B", "Category C", "Category D")
values <- c(30, 50, 20, 40)

# Create a bar plot
barplot(values, names.arg = categories, 
        col = "skyblue",  # Bar color
        main = "Bar Graph Example",  # Title
        xlab = "Categories",  # X-axis label
        ylab = "Values",  # Y-axis label
        ylim = c(0, max(values) * 1.2),  # Y-axis limits
        border = "black"  # Border color
)

# Sample data
data <- rnorm(1000, mean = 50, sd = 10)

# Create a histogram
hist(data,
     breaks = 20,                   # Number of bins
     col = "skyblue",              # Fill color of bars
     border = "black",             # Border color of bars
     main = "Histogram Example",   # Title
     xlab = "Value",               # X-axis label
     ylab = "Frequency",           # Y-axis label
     xlim = c(20, 80),             # X-axis limits
     ylim = c(0, 120),             # Y-axis limits
     axes = TRUE,                  # Display axes
     labels = TRUE,                # Display axis labels
     las = 1,                      # Label orientation
     cex.main = 1.5,               # Title size
     cex.lab = 1.2,                # Axis label size
     cex.axis = 1.0                # Tick mark size
)

# Sample data
x <- c(1, 2, 3, 4, 5)
y <- c(2, 3, 5, 4, 6)

# Create a scatterplot
plot(x, y, 
     main = "Scatterplot Example",  # Title
     xlab = "X-axis Label",  # X-axis label
     ylab = "Y-axis Label",  # Y-axis label
     xlim = c(0, max(x) * 1.2),  # X-axis limits
     ylim = c(0, max(y) * 1.2),  # Y-axis limits
     col = "blue",  # Point color
     pch = 16,  # Point shape (solid circle)
     cex = 1.5,  # Point size
     bg = "red",  # Point background color
     sub = "Subtitle",  # Subtitle
     las = 1,  # Axis label orientation (horizontal)
     bty = "n"  # Turn off box around the plot
)

# Sample data
categories <- c("Category A", "Category B", "Category C", "Category D")
values <- c(30, 50, 20, 40)
colors <- c("skyblue", "salmon", "palegreen", "orchid")

# Create a pie chart
pie(values, labels = categories, 
    col = colors,  # Slice colors
    main = "Pie Chart Example",  # Title
    clockwise = TRUE,  # Direction of slices (clockwise)
    init.angle = 90,  # Starting angle (90 degrees)
    border = "white",  # Slice border color
    # Explode slices (separation from center)
)


# Sample data
set.seed(123)  # For reproducibility
data <- data.frame(
  Group = rep(c("Group A", "Group B", "Group C"), each = 50),
  Value = c(rnorm(50, mean = 10, sd = 2),
            rnorm(50, mean = 15, sd = 3),
            rnorm(50, mean = 12, sd = 2))
)

# Create boxplot
boxplot(Value ~ Group, 
        data = data,
        outline = TRUE,  # Show outliers
        col = c("skyblue", "lightgreen", "lightcoral"),  # Box colors
        border = "black",  # Border color
        main = "Boxplot Example",  # Title
        xlab = "Group",  # X-axis label
        ylab = "Value",  # Y-axis label
        ylim = c(0, 20),  # Y-axis limits
        staplelwd = 1.5,  # Staple line width
        medlwd = 2,  # Median line width
        cex.axis = 1.2,  # Axis label size
        cex.lab = 1.2,  # Axis title size
        cex.main = 1.5,  # Title size
        col.axis = "darkgray"  # Axis color
)


# Example data
data_matrix <- matrix(
  c(1, 2, 3, 4,
    2, 3, 4, 5,
    3, 4, 5, 6,
    4, 5, 6, 7),
  nrow = 4,
  byrow = TRUE
)

# Row and column labels
row_names <- c("Row1", "Row2", "Row3", "Row4")
col_names <- c("Col1", "Col2", "Col3", "Col4")

# Create heatmap
heatmap(data_matrix,
        Rowv = NA,  # Disable row clustering
        Colv = NA,  # Disable column clustering
        col = heat.colors(20),  # Color scheme
        xlab = "X Values",  # X-axis label
        ylab = "Y Values",  # Y-axis label
        main = "Heatmap Example",  # Title
        labRow = row_names,  # Row labels
        labCol = col_names  # Column labels
)
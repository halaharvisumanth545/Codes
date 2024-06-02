# Generate random data
data <- rnorm(100)

# Create density plot
plot <- density(data)

# Plot the density curve
plot(plot, main = "Density Plot", xlab = "Values", ylab = "Density")

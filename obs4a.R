#Binomial Distribution
# Parameters
n <- 10  # Number of trials
p <- 0.5 # Probability of success

# Probability mass function (PMF) for k successes
pmf <- dbinom(0:10, size = n, prob = p)
print(paste("Probability mass function (PMF):", pmf))

# Cumulative distribution function (CDF) for k successes
cdf <- pbinom(0:10, size = n, prob = p)
print(paste("Cumulative distribution function (CDF):", cdf))

# Quantile function (inverse CDF) for probability 0.5
q <- qbinom(0.5, size = n, prob = p)
print(paste("Quantile function (inverse CDF):", q))

# Random variates from the binomial distribution
r <- rbinom(5, size = n, prob = p)
print(paste("Random variates from the binomial distribution:", r))


#Normal Distribution
# Parameters
mu <- 0    # Mean
sigma <- 1 # Standard deviation

# Probability density function (PDF) at x = 0
pdf <- dnorm(0, mean = mu, sd = sigma)
print(paste("Probability density function (PDF) at x = 0:", pdf))

# Cumulative distribution function (CDF) at x = 1
cdf <- pnorm(1, mean = mu, sd = sigma)
print(paste("Cumulative distribution function (CDF) at x = 1:", cdf))

# Quantile function (inverse CDF) for probability 0.5
q <- qnorm(0.5, mean = mu, sd = sigma)
print(paste("Quantile function (inverse CDF) for probability 0.5:", q))

# Random variates from the normal distribution
r <- rnorm(5, mean = mu, sd = sigma)
print(paste("Random variates from the normal distribution:", r))
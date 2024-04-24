-------------------------------------------------------------------
# Load required packages
library(ggplot2)
library(dplyr)

# Generate sample data (replace this with your own dataset)
set.seed(123)
data <- data.frame(
  x = rnorm(100, mean = 10, sd = 2),
  y = rnorm(100, mean = 8, sd = 1)
)

# Apply k-means algorithm
k <- 3  # Number of clusters
kmeans_result <- kmeans(data, centers = k)

# Add cluster assignments to the data
data$cluster <- as.factor(kmeans_result$cluster)

# Visualize the clusters
ggplot(data, aes(x = x, y = y, color = cluster)) +
  geom_point(size = 3) +
  labs(title = "K-means Clustering", x = "X", y = "Y") +
  scale_color_discrete(name = "Cluster")

-------------------------------------------------------------------
  # Load the arules package
  library(arules)

# Generate sample transaction data
transactions <- list(
  c("milk", "bread", "butter"),
  c("milk", "bread"),
  c("milk", "butter"),
  c("bread", "butter"),
  c("milk")
)

# Convert the transaction data to the transaction format
trans <- as(transactions, "transactions")

# Perform Apriori analysis
rules <- apriori(trans, parameter = list(support = 0.2, confidence = 0.8))

# Display the rules
inspect(rules)
--------------------------------------------------------------------------
  # Sample data
  x <- c(1, 2, 3, 4, 5)
y <- c(2, 3, 4, 5, 6)

# Create a data frame with the sample data
data <- data.frame(x, y)

# Build the linear regression model
model <- lm(y ~ x, data = data)

# Summary of the linear regression model
summary(model)

# Plot the data points and the regression line
plot(x, y, main = "Linear Regression", xlab = "x", ylab = "y")
abline(model, col = "red")


--------------------------------------------------------------------------
  #Binomial Distribution
  #We have four functions for handling binomial distribution in R namely:
  #dbinom
  x <- 0:10  # Define 'x' as a sequence from 0 to 10
probabilities <- dbinom(x, size = 10, prob = 1 / 6)  # Calculate probabilities using dbinom

# Create a data frame with 'x' and 'probabilities'
df <- data.frame(x = x, probabilities = probabilities)
print(df)

#dbinom
dbinom(3, size = 13, prob = 1 / 6)
probabilities <- dbinom(x = c(0:10), size = 10, prob = 1 / 6)
data.frame(x, probabilities)
plot(0:10, probabilities, type = "l")

#pbinom
pbinom(3, size = 13, prob = 1 / 6)
plot(0:10, pbinom(0:10, size = 10, prob = 1 / 6), type = "l")

#qbinom
qbinom(0.8419226, size = 13, prob = 1 / 6)
x <- seq(0, 1, by = 0.1)
y <- qbinom(x, size = 13, prob = 1 / 6)
plot(x, y, type = 'l')

#rbinom
rbinom(8, size = 13, prob = 1 / 6)
hist(rbinom(8, size = 13, prob = 1 / 6)) 

#Poisson Distribution
# Set the seed for reproducibility
set.seed(123)
# Generate a Poisson-distributed dataset
lambda <- 5 # Average rate of events
poisson_data <- rpois(100, lambda)
# Create a bar plot to visualize the probability mass function
barplot(table(poisson_data)/length(poisson_data),
        col = "skyblue",
        main = "Poisson Distribution PMF",
        xlab = "Number of Events",
        ylab = "Probability",
        ylim = c(0, 0.30))
# Add a red line representing the theoretical Poisson PMF
points(0:max(poisson_data), dpois(0:max(poisson_data), lambda), type =
         "b", col = "red")
# Add legend
legend("topright", legend = c("Empirical PMF", "Theoretical PMF"),
       fill = c("skyblue", "red"),
       cex = 0.8)

# Define parameters of the normal distribution
mu <- 0  # mean
sigma <- 1  # standard deviation

# Create a sequence of values for x
x <- seq(-5, 5, by = 0.1)

# Calculate the probability density function (PDF) for each value of x
pdf <- dnorm(x, mean = mu, sd = sigma)

# Display the first few values of x and their corresponding PDF values
head(data.frame(x = x, pdf = pdf))

# Plot the normal distribution
plot(x, pdf, type = "l", main = "Normal Distribution", xlab = "x", ylab = "Density")

-------------------------------------------------------------------------------------
  
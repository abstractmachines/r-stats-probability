# Suppose that number of drivers who travel between  origin, destination,
# poisson distribution with $\mu = 20$. 
# Find probability that drivers will be, at most 10.
# This is an ask for a Cumulative (summation) distribution.

# Define the mean (lambda) of the Poisson distribution. Lambda is same as mu.
mu <- 20

# Calculate the probability of at most 10 drivers using ppois().
# In R, we can use the ppois() function to calculate cumulative probabilities for a Poisson distribution.
p_at_most_10 <- ppois(q = 10, lambda = mu)

# Print the result
print(p_at_most_10)

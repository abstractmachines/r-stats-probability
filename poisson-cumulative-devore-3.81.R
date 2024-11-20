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
print(p_at_most_10) # 0.01081172 -> part (a)

probability_less_equal_20 <- ppois(q = 20, lambda = mu)
probability_greater_20 <- 1 - probability_less_equal_20
print(probability_greater_20) # 0.4409074 -> part (b)

probability_between_10_and_20 <- ppois(q = 20, lambda = mu) - ppois(q = 9, lambda = mu)

# Print the result
print(probability_between_10_and_20) # 0.5540972 (also .459 per Devore) -> part (c)

std_dev <- sqrt(mu)
lower_bound <- mu - 2 * std_dev
upper_bound <- mu + 2 * std_dev
within_2_std_dev <- ppois(q = upper_bound, lambda = mu) - ppois(q = lower_bound - 1, lambda = mu)
print(within_2_std_dev) # 0.9548548 -> part (d)

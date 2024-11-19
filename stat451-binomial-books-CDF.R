# Binomial distribution parameters for CDF:
n <- 25
p <- 0.3

prob_less_than_equal_15 <- pbinom(15, n, p)
# Via Complement Law, P(greater than 10) = 1 - P(9):
prob_greater_than_equal_10 <- 1 - pbinom(9, n, p)

# Calculate the desired probability
p_total <- prob_less_than_equal_15 - prob_greater_than_equal_10

print(p_total)

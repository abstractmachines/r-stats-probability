
#givens
ci <- 0.9
sample_mean = 8.393
n = 86
sigma = 0.1

# Static values and computations  
alpha <- 1-ci
z_alpha_2 <- qnorm(1-alpha/2)
bounds <- (z_alpha_2 * (sigma/sqrt(n)))
print(bounds)

lower_bound = sample_mean - bounds
upper_bound = sample_mean + bounds
print (lower_bound)

cat("We are ", ci*100, "percent confident that the true statistic is between ", lower_bound, " and ", upper_bound)


#givens
ci <- 0.9
sample_mean = 8439
n = 25
sigma = 100

# Static values and computations  
alpha <- 1-ci
print(alpha) # 0.1
z_alpha_2 <- qnorm(1-alpha/2)
print(z_alpha_2) # 0.1644854
bounds <- (z_alpha_2 * (sigma/sqrt(n)))
print(bounds) # 32.89707

lower_bound = sample_mean - bounds # 8406.103
upper_bound = sample_mean + bounds # 8471.897
print (upper_bound)

cat("We are ", ci*100, "percent confident that the true statistic is between ", lower_bound, " and ", upper_bound)

# We are  90 percent confident that the true statistic is between  8406.103  and  8471.897
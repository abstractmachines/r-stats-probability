# population hypothesis t test

x <- c(112.3, 97.0, 92.7, 86.0, 102.0, 99.2, 95.8, 103.5, 89.0, 86.7)

# left tailed
t.test(x, mu = 100, alternative = "less")

# Assuming alpha = 0.05 because "strong evidence,"

# One Sample t-test
# 
# data:  x
# t = -1.3708, df = 9, p-value = 0.1018
# alternative hypothesis: true mean is less than 100
# 95 percent confidence interval:
#   -Inf 101.2073
# sample estimates:
#   mean of x 
# 96.42 

# We can see p value > alpha, so we fail to reject null hypothesis.

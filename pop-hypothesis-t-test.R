# Population Hypothesis test

n = 20
alpha = 0.01
t_value = qt(1 - alpha, df = n - 1)
print(t_value) # critical boundary t-value is 2.539483

x <- c(0.52, 1.06, 1.26, 2.17, 1.55, 0.99, 1.10, 1.07, 1.81, 2.05,
       0.91, 0.79, 1.39, 0.62, 1.52, 1.02, 1.10, 1.78, 1.01, 1.15)

t.test(x,mu = 1.00, alternative = "greater",conf.level = 0.99)

# One Sample t-test
# 
# data:  x
# t = 2.4282, df = 19, p-value = 0.01264
# alternative hypothesis: true mean is greater than 1
# 99 percent confidence interval:
#   0.9888425       Inf
# sample estimates:
#   mean of x 
# 1.2435 
# two sample t test (sigma unknown)
h <- c(1.2, 0.9, 0.7, 1.0, 1.7, 1.7, 1.1, 0.9, 1.7, 1.9, 1.3, 2.1, 1.6, 1.8, 1.4, 1.3, 1.9, 1.6, 0.8, 2.0, 1.7, 1.6, 2.3, 2.0) # n = 24
p <- c(1.6, 1.5, 1.1, 2.1, 1.5, 1.3, 1.0, 2.6) # n = 8
alpha <- 0.05

# welch's t-test, denoted by last argument of var.equal=false, does not assume
# equivalent variance for the two samples.

t.test(h,p, var.equal = FALSE)

# Welch Two Sample t-test
# 
# data:  h and p
# t = -0.38011, df = 10.482, p-value = 0.7115
# alternative hypothesis: true difference in means is not equal to 0
# 95 percent confidence interval:
#   -0.5403506  0.3820172
# sample estimates:
#   mean of x mean of y 
# 1.508333  1.587500 

# p >= alpha, -> fail to reject H0, probably.

# let's look at rejection region/critical region:
two_tailed = alpha/2
qt(1-two_tailed, df = 10.482) # 2.214329
# test statistic t = -0.38011 not in H0 rejection regions < -2.21, < 2.21
# fail to reject H0



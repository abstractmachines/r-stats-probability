# hypothesis testing for population proportion
# continuity correction, the last argument, is default true;
# use this for small sample tests in hypothesis testing (binomial).
# Here, n > 30 by far. so, large sample testing, w/ last arg, false.
prop.test(x = 27, n = 267, p=0.05,alternative="greater", correct="false")

# 1-sample proportions test without continuity correction
# 
# data:  27 out of 267, null probability 0.05
# X-squared = 14.691, df = 1, p-value = 6.331e-05
# alternative hypothesis: true p is greater than 0.05
# 95 percent confidence interval:
#   0.07466433 1.00000000
# sample estimates:
#   p 
# 0.1011236 

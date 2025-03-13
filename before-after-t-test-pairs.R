# matched pairs: before and after, is a one sample t test
# did mistakes decrease after practice? -> h0: mu_D = 0, e.g. "no difference.",
# so, Ha: mu_D > 0, so before - after > 0, or there were less mistakes.
# This Ha: mu_D > 0 can be described as "greater," which is how we use t.test().

alpha = 0.05
1-alpha
before <- c(10,6,8,8,13,8)
after <- c(4,2,2,7,8,9) 
d <- before-after
t.test(d, alternative = "greater", conf.level = 1-alpha) # check if decreased
# One Sample t-test
# 
# data:  d
# t = 2.9758, df = 5, p-value = 0.01547
# alternative hypothesis: true mean is greater than 0
# 95 percent confidence interval:
#   1.129997      Inf
# sample estimates:
#   mean of x 
# 3.5 
# p-value = 0.01547 < alpha = 0.05 -> reject H0
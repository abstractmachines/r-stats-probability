# n = 500, random sample 40/500 successes, normalized due to n,

z_test_statistic = 3.07
alpha <- 0.01
lower_critical <- qnorm(alpha/2, mean=0, sd=1, lower.tail=TRUE)
print(lower_critical) # -2.575829
upper_critical <- qnorm(alpha/2, mean=0, sd=1, lower.tail=FALSE)
print(upper_critical) # 2.575829
# two sided p value
p_value <- 2 * pnorm(z_test_statistic, lower.tail = FALSE)
print(p_value) # 0.002140588

# Conclusion: p < alpha: Reject null.

# OR INSTEAD, JUST USE prop.test:

prop.test(x = 40,n=500, p = 0.05, alternative = "two.sided", correct=FALSE)
#1-sample proportions test without continuity correction

#data:  40 out of 500, null probability 0.05
#X-squared = 9.4737, df = 1, p-value = 0.002084
#alternative hypothesis: true p is not equal to 0.05
#95 percent confidence interval:
#  0.05929813 0.10710632
#sample estimates:
#  p 
#0.08 

# p -value = 0.002 < alpha = 0.01 -> reject H0
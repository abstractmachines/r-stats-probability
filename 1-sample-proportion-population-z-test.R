# One sample proportion "percentage of population" hypothesis test.
# due to normality with n >>> 30, no continuity correction needed, so last arg is false.

# Assuming test statistic z = 3.67, with alpha = 0.01:
prop.test(x = 82, n = 150, p = 0.40, alternative = "two.sided", conf.level = 0.99, correct = FALSE)

# 1-sample proportions test without continuity correction
# data:  82 out of 150, null probability 0.4
# X-squared = 13.444, df = 1, p-value = 0.0002457
# alternative hypothesis: true p is not equal to 0.4
# 99 percent confidence interval:
#   0.4422135 0.6471663
# sample estimates:
#   p 
# 0.5466667 

# p < alpha when alpha = 0.01 -> reject null.

# changing alpha = 0.05:
prop.test(x = 82, n = 150, p = 0.40, alternative = "two.sided", conf.level = 0.95, correct = FALSE)
# yields  p-value = 0.0002457. No significant difference.
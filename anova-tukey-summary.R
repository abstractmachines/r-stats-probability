# Data set:
employees <- c(7, 14, 32, 19, 10, 11, 10, 1, 1, 0, 11, 1, 1, 12, 1, 9, 1, 11)
group <- factor(rep(c("1.00", "2.00", "3.00"), each = 6))

# Perform ANOVA. Note: aov() required for Tukey Test, later.
# This will show us, when testing several groups, whether any mean from a group's 
# population or treatment is not equal to the mean of all the other groups.
anova_result <- aov(employees ~ group)
summary(anova_result)
#             Df Sum Sq Mean Sq F value Pr(>F)  
# group        2  458.1  229.06   5.035 0.0212 *
# Residuals   15  682.3   45.49
# -> p value < alpha = 0.05. Reject H0; one of the means in a group, differs.

# Great. But what do we do when we want to know which of the group means differ?
# For that you need the Tukey Honestly Significant Difference test to tell which.
tukey_result <- TukeyHSD(anova_result)
print(tukey_result)
# Tukey multiple comparisons of means
#   95% family-wise confidence level
# 
# Fit: aov(formula = employees ~ group)
# 
# $group
# diff        lwr        upr     p adj
# 2.00-1.00 -11.500000 -21.614458 -1.3855420 0.0251946
# 3.00-1.00  -9.666667 -19.781125  0.4477913 0.0620327
# 3.00-2.00   1.833333  -8.281125 11.9477913 0.8858894
# -> Only group 2-1 diff has a confidence interval not containing zero.
# Therefore, group 2-1 is the only pairwise, statistically significant difference.


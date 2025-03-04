# Hypothesis testing

n = 58 # but sigma unknown, so use t distribution as such
qt(1-0.001,df=57)
# this is a right tailed test, so
p_value <- pt(3.25,df = n-1, lower.tail = FALSE)
print(p_value)

# p value for t dist is very low at 0.0022,
# so the probability of getting values that conflict with H_0 IF H_0 true,
# would be odd as this distribution would have little variance.
# Hypothesis testing

n = 58 # but sigma unknown, so use t distribution as such
qt(1-0.001,df=57) # 3.239478 -> critical value,
x_bar <- 191 # sample mean
mu <- 153 # population mean
# Since n > 30, we are safe using sample statistics (sample mean, sample std dev s...)
s <- 89
t_test_statistic <- (x_bar - mu)/(s/(sqrt(n))) 
print(t_test_statistic) # 3.25

# Since this is a right tailed test, and critical value is 3.23,
# where critical value defines the rejection regions,
# then the test statistic of 3.25 hits within that rejection region for H0,
# we then reject the null hypothesis of H0.

# this is a right tailed test, so
p_value <- pt(3.25,df = n-1, lower.tail = FALSE)
print(p_value)

# p value for t dist is very low at 0.0022,
# so the probability of getting values that conflict with H_0 IF H_0 true,
# would be odd as this distribution would have little variance.
# one sample t tests, t distribution
x <- c(80,68,72,73,76,81,71,71,65,50,63,71,70,76,75,69,70,72,74)
t.test(x,conf.level=0.01) #gives us mean, ci, and p value...
sample_mean <- mean(x)
sample_deviation <- sd(x)
known_mu <- 75
n <- 19

test_statistic_t = (sample_mean - known_mu)/(sample_deviation/sqrt(n))
print(test_statistic_t) # - 2.66
alpha = 0.01
t_critical_value = qt(1-(alpha/2),df = n-1)
print(t_critical_value) # 2.88

# Note: with a distribution that has rejection regions above 2.88 and below -2.88,
# clearly the test statistic of -2.66 would not "hit" inside the rejection region.

# Therefore, since our "hit" is outside of the rejection region
# for the null hypothesis -> "null hypothesis is true" ("fail to reject H0.")

#create a vector of values that shows the height of the probability distribution
#for each value in x, using degrees of freedom
y <- dt(x = x, df = n-1)

#plot x and y
plot(x,y)



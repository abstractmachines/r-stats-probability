# two sample z test

xn <- 13
yn <- 8
xbar <- 47
ybar <- 49
sigma <- 2.5
z_test_statistic <- (xbar - ybar) / sqrt((sigma^2 / xn) + (sigma^2 / yn))
print(z_test_statistic) # -1.780316
alpha <- 0.1
two_tailed <- alpha/2
qnorm(1-two_tailed) # 1.644854
# z test stat -1.78 does fall within the rejection regions above 1.644, below -1.644 
# reject H0, probably

# p values, two-tailed:
2*pnorm(z_test_statistic) # 0.07502432 = p-value < alpha = 0.1 -> reject H0

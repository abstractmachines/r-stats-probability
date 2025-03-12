# paired t test
before <- c(15, 26, 66, 115, 62, 64)
after  <- c(16, 24, 42, 80, 78, 73)

# Paired t-test: same as t.test, with extra args
t.test(before, after, paired = TRUE, conf.level = 0.95)
# Paired t-test
# 
# data:  before and after
# t = 0.72562, df = 5, p-value = 0.5006
# alternative hypothesis: true mean difference is not equal to 0
# 95 percent confidence interval:
#   -14.83193  26.49860
# sample estimates:
#   mean difference 
# 5.833333

# p-value 0.5006 > alpha = 0.05 -> probably fail to reject H0, let's confirm this

alpha <- 0.05
n <- 6
qt(1-alpha/2, df = n-1) # 2.570582 is critical value, defining H0 rejection region

# t-statistic: t = 0.72562 NOT in rejection regions above 2.57, below -2.57
# -> fail to reject H0

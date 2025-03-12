# two sample t confidence interval
xbar <- 53.3
n1 <- 7
s1 <- 3.6

ybar <- 51.2
n2 <- 18
s2 <- 4.5

df <- ((s1^2 / n1 + s2^2 / n2)^2) /
  (((s1^2 / n1)^2) / (n1 - 1) + ((s2^2 / n2)^2) / (n2 - 1))

print(df) # 13.7192

t <- qt(1 - 0.05/2, df) # t critical value is 2.148912

# two sample t confidence interval
upper <- (xbar - ybar) + t*(sqrt(s1^2/n1 + s2^2/n2))
print(upper) # 5.81
lower <- (xbar - ybar) - t*(sqrt(s1^2/n1 + s2^2/n2))
print(lower) # -1.60

# the confidence interval is (-1.6, 5.81)

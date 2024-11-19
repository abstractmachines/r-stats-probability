p_less_than_3 <- pbinom(2, size=25, prob=0.3)

print(p_less_than_3)

p_12 <- pbinom(12, size=25, prob=0.3)

print(p_12)

p_greater_than_12 <- 1 - p_12

print(p_greater_than_12)

p_total = p_less_than_3 + p_greater_than_12

print(p_total)

p = pbinom(15, size=25, prob=0.3)

print(p)



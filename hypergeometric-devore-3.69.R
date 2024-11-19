# Hypergeometric probability distribution:
# 12 refrigerators of a certain type have been returned due to a mechanical issue.
# Suppose 7 of these have a defective compressor, and the other 5 have other issues. 
# If selected in random order, 
# let $Y$ be the number among the first 6 examined that have a defective 
# compressor.

# (a). Calculate $P(Y=4)$ and $P(Y \leq 4)$:

N <- 12
r <- 7
n <- 6

# Calculate P(Y = 4).
# dhyper gives the DENSITY. Also known as pmf, probability mass function.
prob_4 <- dhyper(x = 4, r, N-r, n)

# Calculate P(Y <= 4).
# phyper gives the distribution function. Also known as CDF.
prob_less_equal_4 <- phyper(4, r, N-r, n)

print(prob_4) # 0.3787879
print(prob_less_equal_4) # 0.8787879

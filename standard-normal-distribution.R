# Devore 4.32 Standard Normal Distribution

# P(Z <= mu):
pnorm(0) # 0.5

# P(Z <= 2):
pnorm(2) # 0.9772

# P(Z <= 4):
pnorm(4) # 0.999

# P(2.4) - P(-0.8)
pnorm(2.4) - pnorm(-0.8) # 0.7799

# P(2.4) - P(-2.4)
pnorm(2.4) - pnorm(-2.4) # 0.9836

# Devore 4.44:

# Within 1.5 standard deviations of its mean value:
pnorm(1.5) - pnorm(-1.5)  # 0.8663

# Farther than 2.5 standard deviations from the mean:
pnorm(-2.5) + 1 - pnorm(2.5) # 0.0124

# Between 1 and 2 standard deviations from the mean:
(pnorm(2) - pnorm(-2)) - (pnorm(1) - pnorm(-1)) # 0.2718

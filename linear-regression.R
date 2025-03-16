# Linear regression
x <- c(957,1332,1163,1865,119,273)
y <- c(0.77,0.697,0.617,0.652,1.08,1.42)

cor(x,y)
# -0.8326013 -> that is our correlation coefficient

# Fit a regression line
lm(x~y)

summary(lm(y~x))

anova(lm(y~x)) # p -value = 0.03969 < alpha = 0.05 -> Reject H0

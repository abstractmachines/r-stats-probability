x <- 3
n <- 20
p <- 0.1 
lambda <- n*p

le_poisson <- dpois(x, lambda, log = FALSE)

print(le_poisson)

ppois(3,2)


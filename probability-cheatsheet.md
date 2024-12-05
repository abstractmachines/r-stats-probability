# Probability Cheatsheet : Formulas

## PDF of a continuous RV

> PDF: Probability Density Function

> PDF formula: The PDF of continuous random var $Y$ is the function $f(y)$, such that

> for interval $[a,b], a \leq b$,

> $P(a \leq Y \leq b) = \int_a^b f(y) dy$.

That is, the probability that the continuous random variable is within an interval,
is the area under the curve of the density function between $a$ and $b$.

> PDF Axioms:

1. The _total area under the curve of $f(x)$, from $(-\infty, \infty) = 1$:_

That is, $\int_{-\infty}^{\infty} f(x) dx = 1.$

Continuous variables have a "smooth curve" graph $f(x)$ that looks like the 
result of a histogram, or a result of Riemann sums.

This axiom is analogous to the discrete RV's having all probabilities sum to 1 discretely.

2. $f(x) \geq 0, \forall x$. All probabilities of the PDF function are positive.

## Expected Value and Variance: Continuous RV

> Mean or Expected Value of a continuous random variable:

$E(Y) = \int_{-\infty}^{\infty} y * f(y) dy$

Similarly, for $h(y)$, a function of $y$,

$E[h(Y)] = \int_{-\infty}^{\infty} h(y) * f(y) dy$

> Variance of a continuous random variable with PDF $f(x)$:

$\sigma^2 = \int_{-\infty}^{\infty} (x-\mu)^2 * f(x) dx = E[(X-\mu)^2]$


## CDFs

The CDF for a continuous random variable $X$ is:

$F(x) = P(X \leq x) = \int_{-\infty}^x f(y) dy$. For each $x$, $F(x)$ is the area under the density curve to the left of $x$.

> Axioms:

- $P(X > a) = 1 - F(a)$, and

- $P(a \leq X \leq b) = F(b) - F(a)$.

## Uniform Probability Distribution

> PDF:

PDF of uniform distributions is $f(y; A,B) = \dfrac{1}{B-A}$ between A, B; 0 otherwise.

In the uniform distribution, the probability over a subinterval is proportional to the length of that subinterval.

> CDF:

$F(x) = \dfrac{x-a}{b-a}$

> $\mu, \sigma^2$:

$\mu = \dfrac{a+b}{2}$

$\sigma^2 = \dfrac{(b-a)^2}{12}$

## Normal Probability Distribution

> Normal Distribution for a continuous random variable has the PDF:

$f(y; \mu, \sigma) = \dfrac{1}{\sigma\sqrt{2\pi}} e^{\frac{-(y-\mu)}{2\sigma^2}}$.

> Area under the normal density function from a to b:

$\int_a^b \dfrac{1}{\sigma\sqrt{2\pi}} e^{\frac{-(y-\mu)}{2\sigma^2}}$

> Z Values: Distance in standard deviations from the mean

$z = \dfrac{y-\mu}{\sigma}$

## Standard Normal Distribution

This is the normal distribution, with param values $\mu = 0, \sigma = 1$.

The PDF of a random continuous variable with standard normal distribution is:

$f(z; \mu = 0, \sigma = 1) = \dfrac{1}{\sqrt{2\pi}} e^{\dfrac{-z^2}{2}}$.

The "z -curve" is the standard normal curve. 

> Z-scores: How many std dev from the mean a value is; areas under the curve

>> 68-95-99 rule:

68% of the distribution is within one standard deviation; 95% within two; 99% within three.

> Standardizing (nonstandard) distributions: $\mu = 1, \sigma = 1$

Recall distance from the mean in standard deviations was $z = \dfrac{y-\mu}{\sigma}$.

This is similar; the "standardized variable Y" is $\dfrac{Y-\mu}{\sigma}$.

> Standard normal distribution axioms:

• $P(a \leq X \leq b) = P(\dfrac{a-\mu}{\sigma} \leq Z \leq \dfrac{b-\mu}{\sigma})$

• $P(X \leq a) = \phi(\dfrac{a-\mu}{\sigma})$.

• $P(X \geq b) = 1 - \phi(\dfrac{b-\mu}{\sigma})$.

> The CDF of Z:

$\dfrac{X - \mu}{\sigma} = P(Z \leq z) = P(X \leq \sigma z + \mu) = \int_{-\infty}^{\sigma z + \mu} = f(x;\mu,\sigma) dx$.

> Standard Normal Approximation of Binomial:

Use the Normal approximation:

$\mu = np, \sigma = \sqrt{npq}$ like binomial, and $P(X \leq x) = \phi(\dfrac{x + 0.5 - \mu}{\sigma})$.

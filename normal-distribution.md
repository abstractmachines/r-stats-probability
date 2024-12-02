# The Normal Distribution

## 4.32:

> Suppose the force acting on a column that helps to support a building is a normally distributed random variable X with mean value 15.0 and standard deviation 1.25. Compute the following probabilities by standardizing and then using Table A.3.

> (a). $P(X \leq 15)$:

Since the mean $\mu = 15$, then probability of being below that is $0.5$. Standardizing, we have that

$Z = \dfrac{X-\mu}{\sigma}$ and $P(X \leq a) = P(\dfrac{a - \mu}{\sigma})$,

yielding, by subtracting $\mu$ a shift of $\mu \rightarrow 0$,

and by dividing by $\sigma$, scaling std deviation to $1$ instead of $\sigma$,

$\Rightarrow P(X \leq 15) = P(\dfrac{X-15}{1.25}\leq \dfrac{15-15}{1.25})$

$\Rightarrow P(Z \leq 0) = 0.5$.

> So, to find the probability that a normally distributed, standardized variable
is less than its mean, we want, as expressed in R:

```R
# P(Z <= mu):
pnorm(0) # 0.5
```

> (b). $P(X \leq 17.5)$:


$P(X \leq 17.5) = P(\dfrac{X - 15}{1.25} \leq \dfrac{17.5 - 15}{1.25})$

$\Rightarrow P(Z \leq \dfrac{2.5}{1.25}) \Rightarrow P(Z \leq 2)$, then per the table for $z = 2.00$, $\Rightarrow .9772$.

> In R:

```R
# P(Z <= 2):
pnorm(2) # 0.9772
```

> (c). $P(X \geq 10)$:

$P(X \geq b) = 1 - \dfrac{b-\mu}{\sigma}$; yielding $P(X \geq 10) = P(\dfrac{X-\mu}{1.25} \geq \dfrac{10-15}{1.25})$

$\Rightarrow P(Z \geq \dfrac{-5}{1.25}) \Rightarrow P(Z \geq -4) \Rightarrow 1 - P(Z \leq -4)$, by table, $1 - 0 = 1$.

> In R:

```R
# P(Z <= 4):
pnorm(4) #0.9999
```

### This one is a pretty interesting application!

> (d). $P(14 \leq X \leq 18)$:

$P(14 \leq X \leq 18) = P(\dfrac{14-15}{1.25} \leq \dfrac{X - 15}{1.25} \geq \dfrac{18 - 15}{1.25})$

$\Rightarrow P(\dfrac{-1}{1.25} \leq Z \geq \dfrac{3}{1.25})$

$\Rightarrow P(-0.8 \leq Z \geq 2.4)$, because $z = \dfrac{X - \mu}{\sigma}$, as above.

Hence we are "standardizing" this variable. Then,

$\Rightarrow \phi(2.4) - \phi(-0.8)$ due to the axioms.

Now, since we see $\phi$ that means we use the probability distribution tables.

So, in the Table for Standard Normal Curve areas, lookup $z = -0.8$, and for decimal $.00$,
that value is $.2119$. Similarly, lookup $z = 2.4$, and for decimal $.00$ that value is
$.9918$. Thus,

$\Rightarrow \phi(2.4) - \phi(-0.8)$

$\Rightarrow .9918 - .2119 = .7799$.

> In R:

```R
#P(2.4) - P(-0.8)
pnorm(2.4) - pnorm(-0.8) # 0.7799
```


> (e). $P(|X - 15| \leq 3)$:

$P(|X - 15| \leq 3) = P(-3 \leq X - 15 \leq 3)$

$P(\dfrac{-3}{1.25} \leq \dfrac{X-15}{1.25} \leq \dfrac{3}{1.25}) = P(-2.4 \leq Z \leq 2.4) = \phi(2.4) - \phi(-2.4)$,

and again, when we see $\phi$ we use the tables, showing us that we have $.9918 - .0082 = 0.9836$.

> In R:

```R
#P(2.4) - P(-2.4)
pnorm(2.4) - pnorm(-2.4) # 0.9836
```

## 4.44:

> Find probability that a normally distributed random variable is:

> (a). Within 1.5 standard deviations of its mean value:

Since we're using the standard normal distribution, so we want $P(-1.5 \leq Z \leq 1.5)$, which would be $0.8663$ or in R,

```R
# Within 1.5 standard deviations of its mean value:
pnorm(1.5) - pnorm(-1.5)  # 0.8663
```

> (b). Farther than 2.5 standard deviations from the mean:

This would be $P(Z \leq -2.5) + [1 - P(Z \geq 2.5)]$, or in R,

```R
# Farther than 2.5 standard deviations from the mean:
pnorm(-2.5) + 1 - pnorm(2.5) # 0.0124
```

> (c). Between 1 and 2 standard deviations from the mean:

We need:

$P(Z \leq 2) - P(Z \leq -2) - P(Z \leq 1) - P(Z \leq -1)$, or in R,

```R
# Between 1 and 2 standard deviations from the mean:
(pnorm(2) - pnorm(-2)) - (pnorm(1) - pnorm(-1)) # 0.2718
```
# The Normal Distribution

4.32: Suppose the force acting on a column that helps to support a building is a normally distributed random variable X with mean value 15.0 and standard deviation 1.25. Compute the following probabilities by standardizing and then using Table A.3.

> (a). $P(X \leq 15)$:

Since the mean $\mu = 15$, then probability of being below that is $0.5$. Standardizing, we have that

$Z = \dfrac{X-\mu}{\sigma}$ and $P(X \leq a) = P(\dfrac{a - \mu}{\sigma})$,

yielding, by subtracting $\mu$ a shift of $\mu \rightarrow 0$,

and by dividing by $\sigma$, scaling std deviation to $1$ instead of $\sigma$,

$\Rightarrow P(X \leq 15) = P(\dfrac{X-15}{1.25}\leq \dfrac{15-15}{1.25})$

$\Rightarrow P(Z \leq 0) = 0.5$.

> (b). $P(X \leq 17.5)$:


$P(X \leq 17.5) = P(\dfrac{X - 15}{1.25} \leq \dfrac{17.5 - 15}{1.25})$

$\Rightarrow P(Z \leq \dfrac{2.5}{1.25}) \Rightarrow P(Z \leq 2)$, then per the table for $z = 2.00$, $\Rightarrow .9772$.

> (c). $P(X \geq 10)$:

$P(X \geq b) = 1 - \dfrac{b-\mu}{\sigma}$; yielding $P(X \geq 10) = P(\dfrac{X-\mu}{1.25} \geq \dfrac{10-15}{1.25})$

$\Rightarrow P(Z \geq \dfrac{-5}{1.25}) \Rightarrow P(Z \geq -4) \Rightarrow 1 - P(Z \leq -4)$, by table, $1 - 0 = 1$.

> (d). $P(14 \leq X \leq 18)$:

> (e). $P(|X - 15| \leq 3)$:



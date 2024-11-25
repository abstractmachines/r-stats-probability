# Cumulative Distribution Functions and Expected Values

4.21: An ecologist wishes to mark off a circular sampling region having radius 10 m. However, the radius of the resulting region is actually a random variable $R$ with pdf $f(r) = \dfrac{3}{4}[1-(10-r)^2], 9 \leq x \leq 11$, 0 otherwise. What is the expected area of the resulting circular region?

The CDF for a continuous random variable $X$ is $F(x) = P(X \leq x) = \int_{-\infty}^x f(y) dy$. For each $x$, $F(x)$ is the area under the density curve to the left of $x$.

We know that area of a circle is $\pi R^2$, so we want $E[\pi R^2] \Rightarrow \pi E[R^2]$, where,

Because the expected value of a continuous random variable is $E(Y) = \int_{-\infty}^{\infty} y * f(y) dy$, then expected value of $R^2$ is $E[R^2] = \int_9^{11} R^2 f(r) dr$.

> The PDF $f(r)$ can be simplified as such:

Expanding $(10-r)$, we have $\int_9^{11} \dfrac{3}{4}[1-(100-20r+r^2)] dr = \int_9^{11} \dfrac{3}{4}[-99+20r-r^2)] dr$.

$\Rightarrow \int_9^{11} -\dfrac{297}{4} + 15r -\dfrac{3}{4}r^2 dr$

$\Rightarrow f(r)$.

> The expected value of a continuous random variable $E[r^2]$ multiplies the value $r^2$ by the PDF $f(r)$ as such:

$E[r^2] = \int_9^{11} r^2 [\dfrac{-297}{4} + 15r -\dfrac{3}{4}r^2 dr] \Rightarrow \int_9^{11} \dfrac{-297}{4}r^2 + 15r^3 -\dfrac{3}{4}r^4 dr$.

We can then integrate each term separately, pulling out constants:

$\Rightarrow \dfrac{-297}{4} \int_9^{11} r^2 + 15 \int_9^{11} r^3 -\dfrac{3}{4} \int_9^{11} r^4 dr$; 

the integrals of each term at boundaries being 

Term 1 $r^2$: $\dfrac{r^3}{3} \Biggr|_9^{11} = \dfrac{11^3}{3} - \dfrac{9^3}{3} = \dfrac{602}{3}$; so $\dfrac{-297}{4}*\dfrac{602}{3} = -14899.5$;

Term 2 $r^3$: $\dfrac{r^4}{4} \Biggr|_9^{11} = \dfrac{11^4}{4} - \dfrac{9^4}{4} = 2020$; so $15(2020) = 30300$;

Term 3 $r^4$: $\dfrac{r^5}{5} \Biggr|_9^{11} = \dfrac{11^5}{5} - \dfrac{9^5}{5} = 20400.4$; So,  $-\dfrac{3}{4}(20400.4) = -15300.3$,

and $-14899.5 + 30300 - 15300.3 = 100.2$

$\Rightarrow E[r^2] = 100.2$;

$\Rightarrow \pi E[r^2] = 314.79$.
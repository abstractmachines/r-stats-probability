4.2: Suppose the reaction temperature X in celsius in a chemical process has a uniform distribution with $A = -5$ and $B = 5$.

> (a). Compute $P(X < 0)$.

Note the uniform distribution PDF is, between interval bounds of $[A,B]$, $f(x, A,B) = \dfrac{1}{B-A}$ (and $0$ otherwise outside of the interval).

This would be $f(x, -5, 5) = \dfrac{1}{5-(-5)} = \dfrac{1}{10} = f(x)$, the PDF.

The probability that a continuous RV will fall within an interval is expressed by the area under the curve of $f(x)$ between that interval; therefore,

$\int_{-5}^0 f(y)  dy \Rightarrow \int_{-5}^0 \dfrac{1}{10} dy \Rightarrow \dfrac{1}{10} * y \Biggr|_{-5}^{0} \Rightarrow \dfrac{1}{10} * 0 - \dfrac{1}{10}* (-5) \Rightarrow \dfrac{5}{10} \Rightarrow \dfrac{1}{2} = 0.5$.

> (b). Find $P(-2.5 \leq X \leq 2.5)$.

Here, we have an ask for an interval probability, so we should focus on the CDF for a continuous random variable, distributed uniformly.

Note that the CDF for the uniform distribution is, generally,

$F(x) = \dfrac{x-a}{b-a}$,

which in this case, is $F(x) = \dfrac{x-(-5)}{5-(-5)} \Rightarrow \dfrac{x+5}{10}$.

So, $P(-2.5 \leq X \leq 2.5)$, per the CDF axiom $\forall a, b, a < b, P(a \leq X \leq b) = F(b) - F(a)$,

$\Rightarrow P(-2.5 \leq X \leq 2.5) = F(2.5) - F(-2.5) = \dfrac{2.5 + 5}{10} - \dfrac{-2.5+5}{10} \Rightarrow .75 - .25 = 0.5$.

> (c). Find $P(-2 \leq X \leq 3)$.

Similarly via CDF, this would be

$\Rightarrow P(-2 \leq X \leq 3) = F(3) - F(-2) = \dfrac{3+5}{10} - \dfrac{-2+5}{10} \Rightarrow 0.8 - 0.3 = 0.5.$

> (d). For $k$ satisfying $-5 < k < k + 4 < 5$, compute $P(k < X < k +4)$.

Similarly via CDF, this would be

$P(k < X < k +4) = F(k+4) - F(k) = \dfrac{k+4+5}{10} - \dfrac{k+5}{10} \Rightarrow \dfrac{k+4+5 -k - 5}{10} = \dfrac{4}{10} = 0.4$.

4.2: Suppose the reaction temperature X in celsius in a chemical process has a uniform distribution with $A = -5$ and $B = 5$.

> (a). Compute $P(X < 0)$.

Note the uniform distribution PDF is, between interval bounds of $[A,B]$, $f(x, A,B) = \dfrac{1}{B-A}$ (and $0$ otherwise outside of the interval).

This would be $f(x, -5, 5) = \dfrac{1}{5-(-5)} = \dfrac{1}{10} = f(x)$, the PDF.

The probability that a continuous RV will fall within an interval is expressed by the area under the curve of $f(x)$ between that interval; therefore,

$\int_{-5}^0 f(y)  dy \Rightarrow \int_{-5}^0 \dfrac{1}{10} dy \Rightarrow \dfrac{1}{10} * y \Biggr|_{-5}^{0} \Rightarrow \dfrac{1}{10} * 0 - \dfrac{1}{10}* (-5) \Rightarrow \dfrac{5}{10} \Rightarrow \dfrac{1}{2} = 0.5$.

> (b). Find $P(-2.5 \leq X \leq 2.5)$.

This is the same integral, only at different limits:

$\Rightarrow \dfrac{1}{10} * y \Biggr|_{-2.5}^{2.5} \Rightarrow \dfrac{1}{10}(2.5) - \dfrac{1}{10}(-2.5) \Rightarrow \dfrac{2.5}{10} - \dfrac{-2.5}{10} \Rightarrow \dfrac{5}{10} = \dfrac{1}{2} = 0.5$.

> (c). Find $P(-2 \leq X \leq 3)$.

$\Rightarrow \dfrac{1}{10} * y \Biggr|_{-2}^{3} \Rightarrow \dfrac{3}{10} - \dfrac{-2}{10} \Rightarrow \dfrac{5}{10} = 0.5.$

> (d). For $k$ satisfying $-5 < k < k + 4 < 5$, compute $P(k < X < k +4)$.

Generally from our forms above we can see that the PDF function for uniform probability is computed, at integral limits $a,b$ for example, as such:

$\Rightarrow \dfrac{1}{10} * y \Biggr|_{a}^{b} \Rightarrow \dfrac{b-a}{10}$. We see this work repeated in parts a - c above.

Now, taking $k$, we see that condition $k+4 < 5 \Rightarrow k < 1$, and from $-5 < k$, we can see that $-5 < k < 1$; this means that $k \in [-5,5]$, thusly $k \in [A,B]$ and hence the same PDF still applies since we're within bounds of $[A,B]$. 

$\Rightarrow \dfrac{1}{10}\Biggr|_{k}^{k+4} \Rightarrow \dfrac{(k+4) - k}{10} \Rightarrow \dfrac{4}{10} = 0.4$. 
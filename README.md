# RStudio projects for probability and statistics

Source(s):

Most of this material is derived from _"Mathematical Statistics"_ by Wackerly.

Some of this material is also derived from _"Probability and Statistics for Engineering and the Sciences"_, by Jay Devore, but to a much lesser degree.

The Wackerly book has more formulas (instead of tables), introductions to the mn rule,
and other important concepts of combinatorics and statistics.

# Table of Contents
1. [Probability Definition: Events, Sample Points and Sequencing Events Techniques](#probability-definition)
2. [How to calculate probability: Combinations, Permutations, Cardinality](#how-to-calculate-probability)
3. [Expected Value, Variance, Standard Deviation, Quartiles](#expected-value-variance-standard-deviation-quartiles)
4. [Discrete Random Variables](#discrete-random-variables)
5. [Discrete Probability Distributions: Binomial](#binomial-probability-distribution)
6. [Discrete Probability Distributions: Geometric](#geometric-probability-distribution)
7. [Discrete Probability Distributions: Hypergeometric](#hypergeometric-probability-distribution)
8. [Discrete Probability Distributions: Negative Binomial](#negative-binomial-distribution)
9. [Discrete Probability Distributions: Poisson](#poisson-distribution)
10. [Continuous Random Variables](#continuous-random-variables)
11. [Probability Distributions "Distribution Functions" for all types of variables](#distribution-functions---or-cumulative-distributions---are-for-any-type-of-variable)
12. [What is Density? A Mathematician's Perspective (and prep for Density Functions)](#what-is-density-a-mathematicians-perspective)
13. [Probability Density Functions: PDF](#probabilty-density-functions)
14. [Expected Value for a Continuous Random Variable](#expected-value-continuous-rv)
15. [Cumulative Distribution Functions (CDFs)](#cumulative-distribution-function-cdf)

##  Probability Definition

[Probability](https://en.wikipedia.org/wiki/Probability) is the likelihood that an event will occur.

> Events
The probability of an event `E` is the cardinality of the event `|E|` divided by the cardinality of the sample space `|S|` (the "universe", `S`,)
that the event is in.

$$\frac{|E|}{|S|}$$

## Probability Technique: Sample Points

The Wackerly probability book is great, and describes the sample-point method for calculating probability.

## Probability Technique: Sequenced Events

Another technique, after sample point technique, is sequenced events.

## How to calculate probability

### Counting Distinct Objects : Combinations and Permutations

> Combinations: Order Doesn't Matter

$$ C = \frac{n!}{(n-r)!r!}$$

Examples: Out of the set `S = {A, B, C}`, a combination set would include `AAA`,  `AAB`, `ABC`, .... etc, and `ABA = BAA` because _order doesn't matter._ When order doesn't matter, you don't need to count as many things, e.g. if `AAB` is equivalent to `ABA`, then those items count as one element of the set, not two.

> Permutations: Order Matters

$$ P = \frac{n!}{(n-r)!}$$

Note that the denominator is smaller than in combinations. Permuations possibilities are much larger _because order matters_, so we have to count it all.


Examples: Out of the set `S= {A, B, C}`, a combination set would include `AAA`,  `AAB`, `ABC`, .... etc, and `ABA != BAA.`


### Cardinality

[Cardinality](https://en.wikipedia.org/wiki/Cardinality) is the number of elements in a Set.


## Expected Value, Variance, Standard Deviation, Quartiles

> Expected Value, $\mu$ or $E[Y]$: The average

Expected value or mean is a calculation whose computation will differ depending on the probability distribution technique.

> Variance, $\sigma^2$: Dispersion From the Mean

Variance is a measure of how far a set of numbers "spreads out" from the mean or average value.

> Standard Deviation, $\sigma$: Amount of variance from the mean

A low standard deviation means values are close to the mean, and high standard deviation, more distributed values.

> Quartiles:

A measure in statistics; we've heard "upper quartile", etc. There are three actual quartiles,
first is 25th percentile, then 50th (median) and 75th; the four quartiles are just data 
that fits around those quartiles.

## Discrete Random Variables

> Expected Value or Mean of a Discrete Random Variable

$E(Y) = \mu_y = \sum y* p(y)$

> Variance of a Discrete Random Variable, $\sigma^2$

$V(Y) = \sigma^2_y = E[(Y - \mu)^2]$

> Standard Deviation of a Discrete Random Variable, $\sigma$

$\sigma = \sqrt{\sigma^2}$


Scalar, discrete values of probability. Stepwise functions. Best described via pmf.

> pmf: Probability "mass" function

A pmf measures the scalar value of a discrete variable; the probability that a discrete random variable has a particular value.

This could be denoted as `P(Y = y)`, or more concretely, `P(Y = 1)` for example.

Probability mass functions will depend on the particular problem you're trying to solve.

> Axioms of pmf's and discrete random variable probabilities:

1. Each possible value of the random variable must be assigned a nonzero probability;
2. All of the probabilities must sum to a total probability of `1`.

## Binomial Probability Distribution

To be continued when there is more time :) Essentially, repeated uniform experiments of a series of failures and successes, for example $\{F,F,F,F,S,F,S,F...\}$; the random variable for the binomial distribution counts the number of successes in each trial.

> Distribution:

Using the binomial probability distribution formula, we know that for $n$ trials, 

the pmf represented by:

$b(x; n, p) = {n \choose x}p^x(1-p)^{n-x}$

Or, more canonically, let $q = (1-p)$ and

$b(x; n, p) = {n \choose x}p^xq^{n-x}$.
 
for $x = 0,1,2....$ (and $0$ otherwise).

> Mean, Variance, Std Deviation of Binomial:

$\mu = E(Y) = np$

$\sigma^2 = npq$

## Geometric Probability Distribution

The geometric probability distribution is built on the binomial distribution idea; that of a series of uniform trials occurring of successes and failures; the geometric distribution of a random variable is where value $y$ of the random variable $Y$, e.g. $P(Y=y)$, is the number of the trial in which the first success occurs.

Looking at the sample space (Wackerly 3.5), we see that

$E_1: S$ with success on first trial;

$E_2: FS$ with success on second trial;

...

$E_k: F, F, F .... S $ with success on $kth$ trial;

where there are $k-1$ failures, and first $S$ on $kth$ trial.

As such, $P(Y = y)$ is the probability that there will be $y-1$ failures, and trial number $y$ is the first success. If we let the failures be $q$, that means that there are $y-1$ $q$'s, and one $y$, which describes the geometric distribution below. 
 
> Geometric Probability Distribution:

$p(y) = q^{y-1}p$

> Mean, Variance, Std Deviation of Geometric Distribution:

$\mu = E[Y] = \dfrac{1}{p}$

$\sigma^2 = \dfrac{1-p}{p^2}$.

Proofs for these are in the Wackerly book chapter 3.5 and are interesting.


## Hypergeometric Probability Distribution

> Distribution:

For random sampling of sample size $n$ without replacement on a finite population of size $N$, particularly in cases where the sample size approaches the population size.

The denominator: counting the number of ways to select a subset of $n$ elements from a population of $N$, or, $N$ choose $n$ for the denominator e.g. sample space.

Then for the numerator, we think of $n$ objects, $r$ of which are red, and $N-r$ of which are black. Then, choosing $y$ objects from $r$ and then remaining $n-y$ objects from remaining $N-r$, such that by the $mn$ rule we have $mn = {r \choose y}  {N-r \choose n -y}$. Putting this all together, we have:

$$p(y) = h(y; n,r,N) = \dfrac{{r \choose y}{N-r \choose n-y}}{{N \choose n}}$$

> Mean, Variance, Std Deviation of Hypergeometric:

$\mu = E(Y) = \dfrac{nr}{N}$

$\sigma^2 = (\dfrac{nr}{N})(\dfrac{N-r}{N})(\dfrac{N-n}{N-1})$,

Then if we define $p = \frac{r}{N}$ and $q = 1 - p = \frac{N-r}{N}$,

$\sigma^2 = npq(\dfrac{N-n}{N-1})$, similarly to binomial random variable.

Note the factor $\dfrac{N-n}{N-1}$, often called the _"finite population correction factor"_. 

As $N \rightarrow \infty$, $\dfrac{N-n}{N-1} \rightarrow 1$.

So for larger population sizes, the variance of the hypergeometric distribution is the same as binomial, e.g. $npq$.

As $n \rightarrow N$, $\dfrac{N-n}{N-1} < 1$, so for more "finite" population sizes _where sample size approaches population size_,

then obviously the hypergeometric distribution variance is smaller than that of the binomial distribution, as we'd have variance of $npq$ multiplied by a factor of less than 1.

Having lesser variance can be a good thing, so we can see how the hypergeometric distribution is useful for cases where the sample size approaches the population size. "For sampling from a finite population" such as, quality control, genetic hypothesis testing, or statistical hypothesis testing.

## Negative Binomial Distribution

Recall the geometric distribution, which is finding the probability of the first success. The negative binomial distribution focuses on the use case for multiple successes occurring.

Depending on the textbook you are using, this is either counting the number of failures, or counting the trial where the $r$th success occurs.

> Distribution (TODO): (case 1, Wackerly)

> Distribution (TODO): Case 2, Devore

> Mean, Variance (TODO):

## Poisson Distribution

The Poisson probability distribution, used for rare events over a period of time, is also used to approximate the binomial distribution since the binomial distribution converges to the Poisson distribution. The Poisson distribution can approximate the binomial distribution in use cases for: large $N$, small $p$, and $\lambda = np \leq \approx 7$.

The Poisson distribution's probability function is $p(y) = \dfrac{\lambda^y}{y!}e^{-y}$, with $\mu = \lambda$, $\sigma^2 = \lambda$, and hence $\sigma = \sqrt{\lambda}$.

## Continuous Random Variables

Continuous random variables are defined on a continuum, e.g. an interval.

Take the real number line $x \in \mathbb{R}$. We know from Real Analysis that there are infinite possibilities,
either countably infinite or uncountably infinite, in an interval on this line.

> Hence, axioms of probability for continuous variables cannot be similar to those of discrete.
- If each possible value of the random variable must be assigned a probability,
- And each possible value is a subset of an infinite set within an interval,
- Then the probabilities cannot all sum to 1, as they are infinite.
- Therefore a new set of axioms for continuous random variables must be defined, as follows.

## Distribution functions - or Cumulative Distributions - are for any type of variable

From Wackerly 4.2, this is an important note about the definition of distribution functions,
because _distribution functions, e.g. cumulative distributions or probability distributions,
can be for ANY random variable, whether discrete or continuous:_

>> "Before we can state a formal definition for a continuous random variable, we must define the distribution function (or cumulative distribution function) associated with a random variable."

>> Let `Y` denote any random variable. Then, `F(y) = P(Y <= y)`, for example, `P(Y <= 2)`.

>> The *nature* of the distribution function associated with a random variable, determines whether the variable is discrete or continuous.

- Discrete random variables have a stepwise function.
- Continuous random variables have a continuous function.
- Continuous random variables have a smooth curve graph that is the result of histograms, or Riemann summations.

### Axioms of continuous RV distributions

- Variables are continuous if their distributions are, and, lots of real analysis continuity stuff,
regarding "absolute continuity." More importantly,

- For a continuous random variable `Y`, then $\forall y \in \mathbb{R}, P(Y = y) = 0$,
that is,

> Continuous random variables have a zero probability at discrete points.

Wackerly uses the example of daily rainfall; probability of exactly 2.312 inches, a discrete point, is quite unlikely;
probability of between 2 and 3 inches is quite likely; an interval.

> Semantics and Idioms of `R` language for probability distributions:
Considered separate from pure mathematical theory.

Note in R, the "density function," invoked via `dhyper(y, r, N-r, n)`, this function measures a discrete random variable's scalar value, such as our hypergeometric example in R; there's a bit of oddness here, since we've used this function for _discrete_ random variables.

Also in R, the "probability distribution function" is invoked via `phyper(4, r, N-r, n)`.

## What Is Density? A Mathematician's Perspective

> _And a preparation for density functions in probability._

_Note: This is often considered grad-student level Real Analysis work, and the real numbers
can arguably be constructed in various ways; the Dedekind cuts are merely my personal favorite._

_I ran across this material with Jay Cummings' _Real Analysis_ book,
this is a book that's \$20 on Amazon and used by the Wrath of Math (excellent Youtube math channel)._

_If you'd prefer to have a social life, you can skip this section, but frankly, without density 
in Real Analysis, density functions in probability are a bit nonsensical to me._

Recall Real Analysis, and that the real numbers can be constructed via Dedekind cuts of 
rational numbers [link](https://en.wikipedia.org/wiki/Construction_of_the_real_numbers); recall that
"rationals are dense in the reals," [stack exchange](https://math.stackexchange.com/questions/1027970/what-does-it-mean-for-rational-numbers-to-be-dense-in-the-reals), Wikipedia dense set and topology [here](https://en.wikipedia.org/wiki/Dense_set).

We could also say "density of $\mathbb{Q} \in \mathbb{R}$."

Basically, there are a lot of "density" discussions with the real numbers, as such.

Take any interval on the real number line. "Subdivide" that interval into many "subdivisions."

There are "infinite" real numbers, or subdivisions, in that interval (arguably countable or uncountable).

The big picture is, they're infinite, or close enough to infinite that it doesn't matter.

This is what "density" looks like. (The articles above are about this, regarding the real numbers,
as well as rational and irrational numbers, and constructing the real number line from a hybrid
of rational and irrational numbers like Dedekind, which is very fun Real Analysis stuff).

So, that's what "density" is: take an interval on the real number line,
subdivide it quite a lot into infinite subdivisions,
and hey, that's "dense."

## Probabilty Density Functions

Continuous variables are analyzed on an _interval_, so we care about _density_ in that interval, as the previous section discusses.

> PDF: Probability Density Function

A PDF is a function that provides a "likelihood" that a continuous random variable's
value is _close to_ that of the value of a sample, or multiple samples.

For more on PDFs, see
[Wikipedia PDF article](https://en.wikipedia.org/wiki/Probability_density_function).

> Probability density: Probability per unit length that RV is _near_ one or more samples.

**Probability density is** the probability per unit length, while the absolute likelihood 
for a continuous random variable to take on any particular value is 0 
(since there is an infinite set of possible values to begin with), 
the value of the PDF at two different samples can be used to infer, 
in any particular draw of the random variable, how much more likely it is that the 
random variable would be close to one sample compared to the other sample." [wikipedia](https://en.wikipedia.org/wiki/Probability_density_function)

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

> Uniform Distributions

Uniform Distributions look like a "block", often.

PDF of uniform distributions is $f(y; A,B) = \dfrac{1}{B-A}$ between A, B; 0 otherwise.

In the uniform distribution, the probability over a subinterval is proportional to the length of that subinterval

## Expected Value: Continuous RV

$E(Y) = \int_{-\infty}^{\infty} y * f(y) dy$

Similarly, for $h(y)$, a function of $y$,

$E[h(Y)] = \int_{-\infty}^{\infty} h(y) * f(y) dy$

## Cumulative Distribution Function (CDF)

The CDF for a continuous random variable $X$ is:

$F(x) = P(X \leq x) = \int_{-\infty}^x f(y) dy$. For each $x$, $F(x)$ is the area under the density curve to the left of $x$.

> Using $F(x) to compute probabilities:

Let $X$ be a continuous random variable with PDF = $f(x)$, CDF = $F(x)$.

Then, $\forall a, P(X > a) = 1 - F(a)$, and

$\forall a, b, a < b, P(a \leq X \leq b) = F(b) - F(a)$.


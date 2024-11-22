# RStudio projects for probability and statistics

Source(s):

Most of this material is derived from _"Mathematical Statistics"_ by Wackerly.

Some of this material is also derived from _"Probability and Statistics for Engineering and the Sciences"_, by Jay Devore, but to a much lesser degree.

The Wackerly book has more formulas (instead of tables), introductions to the mn rule,
and other important concepts of combinatorics and statistics.

# Table of Contents
1. [Probability Definition: Events, Sample Points and Sequencing Events Techniques](#probability-definition)
2. [How to calculate probability: Combinations, Permutations, Cardinality](#how-to-calculate-probability)
3. [Discrete Random Variables](#discrete-random-variables)
4. [Continuous Random Variables](#continuous-random-variables)
5. [Probability Distributions "Distribution Functions" for all types of variables](#distribution-functions---or-cumulative-distributions---are-for-any-type-of-variable)
4. [TODO Expected Value, Variance, Standard Deviation, Quartiles][#]
5. [Probability Distributions: Binomial](#binomial-probability-distribution)
6. [TODO Probability Distributions: Geometric](#geometric-probability-distribution)
7. [Probability Distributions: Hypergeometric](#hypergeometric-probability-distribution)
8. [Probability Distributions: Negative Binomial](#negative-binomial-distribution)
9. [Probability Distributions: Poisson](#poisson-distribution)

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

## Discrete Random Variables

Scalar, discrete values of probability. Stepwise functions. Best described via pmf.

> pmf: Probability "mass" function

A pmf measures the scalar value of a discrete variable; the probability that a discrete random variable has a particular value.

This could be denoted as `P(Y = y)`, or more concretely, `P(Y = 1)` for example.

Probability mass functions will depend on the particular problem you're trying to solve.

> Axioms of pmf's and discrete random variable probabilities:

1. Each possible value of the random variable must be assigned a nonzero probability;
2. All of the probabilities must sum to a total probability of `1`.

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

> Semantics and Idioms of `R` language for probability distributions:
Considered separate from pure mathematical theory.

Note in R, the "density function," invoked via `dhyper(y, r, N-r, n)`, this function measures a discrete random variable's scalar value, such as our hypergeometric example in R; there's a bit of oddness here, since we've used this function for _discrete_ random variables.

Also in R, the "probability distribution function" is invoked via `phyper(4, r, N-r, n)`.


## Expected Value, Variance, Standard Deviation, Quartiles

> Expected Value: TODO

> Variance: TODO

> Standard Deviation: TODO

> Quartiles: TODO

## Binomial Probability Distribution

To be continued when there is more time :) Essentially, repeated uniform experiments of a series of failures and successes, for example $\{F,F,F,F,S,F,S,F...\}$; the random variable for the binomial distribution counts the number of successes in each trial.

> Distribution:

Using the binomial probability distribution formula, we know that for $n$ trials, 

the pmf represented by:

$b(x; n, p) = {n \choose x}p^x(1-p)^{n-x}$

for $x = 0,1,2....$ (and $0$ otherwise).

> Mean, Variance (TODO):

## Geometric Probability Distribution

TODO - wrt Wackerly

> Distribution (TODO)

> Mean, Variance (TODO)

## Hypergeometric Probability Distribution

> Distribution:

For random sampling of sample size $n$ without replacement on a finite population of size $N$, particularly in cases where the sample size approaches the population size.

The denominator: counting the number of ways to select a subset of $n$ elements from a population of $N$, or, $N$ choose $n$ for the denominator e.g. sample space.

Then for the numerator, we think of $n$ objects, $r$ of which are red, and $N-r$ of which are black. Then, choosing $y$ objects from $r$ and then remaining $n-y$ objects from remaining $N-r$, such that by the $mn$ rule we have $mn = {r \choose y}  {N-r \choose n -y}$. Putting this all together, we have:

$$p(y) = h(y; n,r,N) = \dfrac{{r \choose y}{N-r \choose n-y}}{{N \choose n}}$$

> Mean, Variance (TODO):

## Negative Binomial Distribution

Either counting the number of failures, or counting the $r$th trial where the first success occurs.

> Distribution (TODO):

> Mean, Variance (TODO):

## Poisson Distribution

The Poisson probability distribution, used for rare events over a period of time, is also used to approximate the binomial distribution since the binomial distribution converges to the Poisson distribution. The Poisson distribution can approximate the binomial distribution in use cases for: large $N$, small $p$, and $\lambda = np \leq \approx 7$.

The Poisson distribution's probability function is $p(y) = \dfrac{\lambda^y}{y!}e^{-y}$, with $\mu = \lambda$, $\sigma^2 = \lambda$, and hence $\sigma = \sqrt{\lambda}$.


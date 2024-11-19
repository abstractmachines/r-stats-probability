# RStudio projects for probability and statistics

# Table of Contents
1. [Probability Definition: Events, Sample Points and Sequencing Events Techniques](#probability-definition)
2. [How to calculate probability: Combinations, Permutations, Cardinality](#how-to-calculate-probability)
3. [Random Variables: Discrete and Continuous (pmf, CDF functions)](#discrete-random-variables)
4. [TODO Expected Value][#]
5. [Probability Distributions: Binomial](#binomial-probability-distribution)
6. [TODO Probability Distributions: Geometric](#geometric-probability-distribution)
7. [Probability Distributions: Hypergeometric](#hypergeometric-probability-distribution)
8. [Probability Distributions: Negative Binomial](#negative-binomial-distribution)

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

TODO - in progress, as this coursework does NOT cover this material to satisfaction.

> pmf: Probability "mass" function

A pmf measures the scalar value of a discrete variable, and a PDF (probability density function) measures the probability that a continuous random variable will have a certain range.

Note in R, the "density function," invoked via `dhyper(y, r, N-r, n)`, this function measures a discrete random variable's scalar value, such as our hypergeometric example in R; there's a bit of oddness here, since we've used this function for _discrete_ random variables.

Also in R, the "probability distribution function" is invoked via `phyper(4, r, N-r, n)`.

> CDF 

TODO

## Binomial Probability Distribution

To be continued when there is more time :) Essentially, repeated uniform experiments of a series of failures and successes, for example $\{F,F,F,F,S,F,S,F...\}$; the random variable for the binomial distribution counts the number of successes in each trial.

Using the binomial probability distribution formula, we know that for $n$ trials, 

the pmf represented by:

$b(x; n, p) = {n \choose x}p^x(1-p)^{n-x}$

for $x = 0,1,2....$ (and $0$ otherwise).

## Geometric Probability Distribution

TODO - wrt Wackerly

## Hypergeometric Probability Distribution

For random sampling of sample size $n$ without replacement on a finite population of size $N$, particularly in cases where the sample size approaches the population size.

The denominator: counting the number of ways to select a subset of $n$ elements from a population of $N$, or, $N$ choose $n$ for the denominator e.g. sample space.

Then for the numerator, we think of $n$ objects, $r$ of which are red, and $N-r$ of which are black. Then, choosing $y$ objects from $r$ and then remaining $n-y$ objects from remaining $N-r$, such that by the $mn$ rule we have $mn = {r \choose y}  {N-r \choose n -y}$. Putting this all together, we have:

$$p(y) = h(y; n,r,N) = \dfrac{{r \choose y}{N-r \choose n-y}}{{N \choose n}}$$

## Negative Binomial Distribution

Either counting the number of failures, or counting the $r$th trial where the first success occurs.

TODO 

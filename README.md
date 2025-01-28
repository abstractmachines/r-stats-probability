# RStudio projects for probability and statistics

Assumption: Set theory and proofs familiarity

Source(s):

Most of this material is derived from _"Mathematical Statistics"_ by Wackerly.

Some of this material is also derived from _"Probability and Statistics for Engineering and the Sciences"_, by Jay Devore, but to a much lesser degree.

The Wackerly book has more formulas (instead of tables), introductions to the mn rule,
and other important concepts of combinatorics and statistics.

# Table of Contents
1. [Probability Definition: Events, Sample Points and Sequencing Events Techniques](#probability-definition)
2. [How to calculate probability: Combinations, Permutations, Bayes Theorem](#how-to-calculate-probability)
3. [Expected Value, Variance, Standard Deviation, Quartiles](#expected-value-variance-standard-deviation-quartiles)
4. [Discrete Random Variables](#discrete-random-variables)
5. [Discrete Probability Distributions: Binomial](#binomial-probability-distribution)
- 5b. [Bernoulli](#bernoulli-random-variables-and-distributions)
6. [Discrete Probability Distributions: Geometric](#geometric-probability-distribution)
7. [Discrete Probability Distributions: Hypergeometric](#hypergeometric-probability-distribution)
8. [Discrete Probability Distributions: Negative Binomial](#negative-binomial-distribution)
9. [Discrete Probability Distributions: Poisson](#poisson-distribution)
10. [Continuous Random Variables](#continuous-random-variables)
11. [Probability Distributions "Distribution Functions" for all types of variables](#distribution-functions---or-cumulative-distributions---are-for-any-type-of-variable)
12. [What is Density? A Mathematician's Perspective (and prep for Density Functions)](#what-is-density-a-mathematicians-perspective)
13. [Probability Density Functions: PDF](#probabilty-density-functions)
14. [Expected Value for a Continuous Random Variable](#expected-value-and-variance-continuous-rv)
15. [Cumulative Distribution Functions (CDFs)](#cumulative-distribution-function-cdf)
16. [Uniform Probability Distribution](#uniform-probability-distribution)
17. [Normal (and Standard Normal) Probability Distributions](#normal-probability-distribution)
- 17b. [Z Scores](#standard-scores-z-scores)
18. [Standard Normal Distribution](#standard-normal-distribution)
- 18b. [Central Limit Theorem](#central-limit-theorem)

19. [Gamma and Exponential Distributions](#gamma-and-exponential-distributions)
20. [Multivariate (Bivariate, Joint) Probability Distributions](#multivariate---bivariate-joint-probability-distributions)
21. [Marginal and Conditional Probability Distributions](#marginal-and-conditional-probability-distributions)
22. [Independent Random Variables](#independent-random-variables)
23. [Expected Value of a Function of Random Variables](#expected-value-of-a-function-of-random-variables)
24. [Covariance of Two Random Variables](#covariance-of-two-random-variables)

##  Probability Definition

[Probability](https://en.wikipedia.org/wiki/Probability) is the likelihood that an event will occur.

> Events
The probability of an event `E` is the cardinality of the event `|E|` divided by the cardinality of the sample space `|S|` (the "universe", `S`,)
that the event is in.

$$\frac{|E|}{|S|}$$

### Axioms of Probability

• For any event, the probability is nonnegative.

• Probability of entire sample space is $1$, or $100\%$.

• The likelihood of at least 1 event occurring is the sum of all events.

### Laws of Probability

> Law of Total Probability:

$P(B) = P(B|A)P(A) + P(B|A\prime)P(A\prime) + P(B|C)P(C) ...$

> Law of Conditional Probability:

$P(A|B) = \dfrac{P(A \cap B)}{P(B)}$

> Independent Events:

$P(A|B) = P(A)$, and/or if $A \cap B = \emptyset \Rightarrow P(A \cap B) = P(A)P(B)$.

One really interesting quality about independent events is that reliant events are dependent;

"negative number" versus "positive number" are dependent events.

> Mutually Exclusive is not Independent

Take the "negative number" versus "positive number" setup. "if A, then not B".

Here, events are dependent, and mutually exclusive. 

> Multiplicative:

$P(A \cap B) = P(A) P(B|A) = P(B)P(A|B)$.

If A and B independent, $P(A \cap B) = P(A)P(B)$.

> Additive:

$P(A \cup B) = P(A) + P(B) - P(A \cap B)$.

If A and B are mutually exclusive, $P(A \cap B) = 0$ and $P(A \cup B) = P(A) + P(B)$.

### Some Probability Properties

• $P(A) + P(A\prime) = 1$, and by Complement Law, $P(A) = 1 - P(A\prime)$.

• The complement of "at most one" is "at least two."

• The complement of "at least one type" is "only one type."

## Probability Technique: Sample Points

The Wackerly probability book is great, and describes the sample-point method for calculating probability.

One example is to toss a pair of dice. The sample space, via the `mn rule`, is $m \times n = (6)(6) = 36$ sample points in the sample space.

There will be a list of events such as $E_1$ = the event that roll is $(1,1)$, event $E_2 = (1,2)$ and so on. Each event is called _equiprobable_, having equally likely probability. So each event $A$ has a probability $P(A) = \dfrac{N(A)}{N(S)} = \dfrac{1}{36}$.

See the Wackerly book for more details on this technique, as well as sequenced events.

## Probability Technique: Sequenced Events

Another technique, after sample point technique, is sequenced events.

## How to calculate probability

### Counting Distinct Objects : Combinations and Permutations

> Ordering n items: $n!$ ways.

> Combinations: Order Doesn't Matter

$$ C = \frac{n!}{(n-r)!r!}$$

Examples: Out of the set `S = {A, B, C}`, a combination set would include `AAA`,  `AAB`, `ABC`, .... etc, and `ABA = BAA` because _order doesn't matter._ When order doesn't matter, you don't need to count as many things, e.g. if `AAB` is equivalent to `ABA`, then those items count as one element of the set, not two.

> Permutations: Order Matters

$$ P = \frac{n!}{(n-r)!}$$

Note that the denominator is smaller than in combinations. Permuations possibilities are much larger _because order matters_, so we have to count it all.


Examples: Out of the set `S= {A, B, C}`, a combination set would include `AAA`,  `AAB`, `ABC`, .... etc, and `ABA != BAA.`

> Bayes Theorem:

Usually used for inversion techniques. "Find probability of a cause, given effect."

Let $A_1, ... A_k$ be mutually exclusive, disjoint events with prior probabilities.

Then, $P(A_i | B) = \dfrac{P(A_i \cap B}{P(B)} = \dfrac{P(B|A_i)P(A_i)}{\sum_{i=1}^k P(B|A_i)P(A_i)}$

> Cardinality

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

>> Hacking variance: $Var[Y] = E[Y^2] = [E(Y)]^2$

A trick that's nice to know.

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

The binomial distribution is *identical, independent* trials. These are uniform experiments of a series of failures and successes, for example $\{F,F,F,F,S,F,S,F...\}$; the random variable for the binomial distribution counts the number of successes in each trial.

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

## Bernoulli Random Variables and Distributions

The Bernoulli distribution is considered a special case of the binomial distribution, with $n = 1$.

Bernoulli random variables, or distributions, are considered the simplest. This is a binary random variable with "success" denoted as `p` and "failure" as `1-p`, or just `q` where `q = 1-p`.

- PMF: $f(x;p) = p$ if success, $f(x;p) = 1-p = q$ if failure.

- Mean: $\mu = 1-p$

- Variance: $\sigma^2 = p(1-p) \Rightarrow pq$

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

The "rth success". $p(y) = {(y-1) \choose (r-1)}p^rq^{y-r}$ where $y$ is either num of failures before rth success (Devore) or num trial on which rth success occurs (Wackerley). $\mu = \dfrac{r}{p}$, $\sigma^2 = \dfrac{r(1-p)}{p^2}$.

> Distribution (TODO): (case 1, Wackerly)

> Distribution (TODO): Case 2, Devore

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

## Probability Density Functions

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


## Expected Value and Variance: Continuous RV

> Mean or Expected Value of a continuous random variable:

$E(Y) = \int_{-\infty}^{\infty} y * f(y) dy$

Similarly, for $h(y)$, a function of $y$,

$E[h(Y)] = \int_{-\infty}^{\infty} h(y) * f(y) dy$

> Variance of a continuous random variable with PDF $f(x)$:

$\sigma^2 = \int_{-\infty}^{\infty} (x-\mu)^2 * f(x) dx = E[(X-\mu)^2]$

## Cumulative Distribution Function (CDF)

The CDF for a continuous random variable $X$ is:

$F(x) = P(X \leq x) = \int_{-\infty}^x f(y) dy$. For each $x$, $F(x)$ is the area under the density curve to the left of $x$.

> Using $F(x) to compute probabilities:

Let $X$ be a continuous random variable with PDF = $f(x)$, CDF = $F(x)$.

Then, $\forall a, P(X > a) = 1 - F(a)$, and

$\forall a, b, a < b, P(a \leq X \leq b) = F(b) - F(a)$.


> Relating PDF and CDF via fundamental theorem of calculus:

If $X$ is a continuous random variable with PDF $f(x)$ and CDF $F(x)$,

Then, $\forall x$ where $F\prime(x)$ exists, $F\prime(x) = f(x)$.

## Uniform Probability Distribution

In a uniform distribution, every possible outcome is equiprobable - for example, handing out a dollar to random passersby without discernment.

Uniform Distributions look like a "block" most of the time, where probability is constant within an interval.

> Uniform Distributions for Discrete Random Variables

The probability is 1, divided by total outcomes.

Use cases include the possible outcomes of rolling a 6-sided die,

probability of drawing a particular suit within a deck of cards,

flipping a coin, etc.

All of these are equiprobable discrete cases.

> Uniform Distributions for Continuous Random Variables

This can include a random number generator, temperature ranges, and many use cases
with an infinite number of possible outcomes within an interval of measurement.

For the continuous random variables, we'll present the probability density function,
the cumulative distribution function, and mean and variance.

> PDF:

PDF of uniform distributions is $f(y; A,B) = \dfrac{1}{B-A}$ between A, B; 0 otherwise.

In the uniform distribution, the probability over a subinterval is proportional to the length of that subinterval.

> CDF:

$F(x) = \dfrac{x-a}{b-a}$

> $\mu, \sigma^2$:

$\mu = \dfrac{a+b}{2}$

$\sigma^2 = \dfrac{(b-a)^2}{12}$

## Normal Probability Distribution

This is the famous "bell curve," the most widely used probability distribution,
where the mean is at the center, and standard deviation depicts width around
that mean of the curve, indicating its variance - or, its _volatility._ This
relation to volatility helps us understand the bell curve's importance in
measuring the relative stability of a metric.

The normal distribution is common in statistics, economicics and finance.

The little underlying standard deviations from the mean create the bell shape.

> Normal Distribution for a continuous random variable has the PDF:

$f(y; \mu, \sigma) = \dfrac{1}{\sigma\sqrt{2\pi}} e^{\frac{-(y-\mu)}{2\sigma^2}}$.

> Parameters of the Normal Distribution: $\mu, \sigma$

We consider $\mu$ a location parameter since its location centers the bell curve;

we consider $\sigma$ a scale parameter since variance widens or narrows the curve,
without changing its mean center location.

The notation $Y \sim N(\mu,\sigma^2$) means _"the random variable Y is normally distributed, with params_ $\mu, \sigma^2$."

> Area under the normal density function from a to b:

$\int_a^b \dfrac{1}{\sigma\sqrt{2\pi}} e^{\frac{-(y-\mu)}{2\sigma^2}}$

> R code: pnorm, qnorm

$pnorm(y_0, \mu, \sigma) \Rightarrow P(Y \leq Y_0)$

$qnorm(p \mu, \sigma) \Rightarrow$ the pth quantile such that $P(Y \leq \phi_p) = p$.

## Standard Normal Distribution

This is the normal distribution, with param values $\mu = 0, \sigma = 1$.

The PDF of a random continuous variable with standard normal distribution is:

$f(z; \mu = 0, \sigma = 1) = \dfrac{1}{\sqrt{2\pi}} e^{\dfrac{-z^2}{2}}$.

## Standard Scores (Z Scores)

> Z score / Z Value / Standard Score

Z Scores are called so many things, but they all mean the same thing: the 
distance of an observed value from the statistical mean. Theoretically, this 
would be the population mean.

$z = \dfrac{y-\mu}{\sigma}$

> Z Curve
The "z -curve" is the standard normal curve. 

> Z-scores: How many std dev from the mean a value is; areas under the curve

>> 68-95-99 rule:

68% of the distribution is within one standard deviation; 95% within two; 99% within three.

So, 

• 68% of all scores: $-1 < z < 1$,

• 95% of all scores: $-2 < z < 2$,

• 99% of all scores: $-3 < z < 3$,

• and 50% of all scores: $0 < z$, since the mean is at zero; it's convenient to
often only calculate one side due to the geometry of the normal distribution.

> Z-notation for z-critical values; percentiles

The $Z_\alpha$ percentile is the $100(1-\alpha)$-th percentile of the distribution;
this means _"area to the right_" of $\alpha$. For example, we say that
$Z_{0.5}$ is the $100(1-0.05)$-th, or just 95th, percentile of the standard normal distribution.

> Standardizing (nonstandard) distributions: $\mu = 1, \sigma = 1$

Recall distance from the mean in standard deviations was $z = \dfrac{y-\mu}{\sigma}$.

This is similar; the "standardized variable Y" is $\dfrac{Y-\mu}{\sigma}$.

• Subtracting $\mu$ "shifts the mean to zero";

• Dividing by $\sigma$ scales the variable s.t. the std deviation is 1 instead of $\sigma$.

> Standard normal distribution axioms:

• $P(a \leq X \leq b) = P(\dfrac{a-\mu}{\sigma} \leq Z \leq \dfrac{b-\mu}{\sigma})$;

>> Then, when we see $\phi$, that means to use probability distribution tables:

$\Rightarrow \phi(\dfrac{b-\mu}{\sigma}) - \phi(\dfrac{a-\mu}{\sigma})$.

• $P(X \leq a) = \phi(\dfrac{a-\mu}{\sigma})$.

• $P(X \geq b) = 1 - \phi(\dfrac{b-\mu}{\sigma})$.

• The CDF of Z = $\dfrac{X - \mu}{\sigma} = P(Z \leq z) = P(X \leq \sigma z + \mu) = \int_{-\infty}^{\sigma z + \mu} = f(x;\mu,\sigma) dx$.

    **Please note the normal distribution markdown file to see an application
    of the axioms of std normal distribution, as that is the best way to learn.**

> Standard Normal Approximation of Binomial:

An interesting quality of the normal distribution is that its curve approximates the histogram Riemann-sums-like binomial distribution when a random variable under the binomial distribution has histograms that aren't "too skewed". For these cases, use the normal approximation.

> Normal approximation:

$\mu = np, \sigma = \sqrt{npq}$ like binomial, and

$P(X \leq x) = \phi(\dfrac{x + 0.5 - \mu}{\sigma})$.

This approximation is adequate if $np \geq 10$, $nq \geq 10$, as it gives enough symmetry in the underlying binomial distribution.

## Central Limit Theorem

> "For large enough n, things are normal."

For a large enough sample size of n, usually $n > 30$, a standard normal distribution will suffice for a random variable.

<!-- Random Sampling for any distribution: $E[\bar{Y}]  = \mu, V[\bar{Y}] = \dfrac{\sigma^2}{n}$. -->

If the sample size is large, $\bar{Y}$ will have an approximately normal sampling distribution, so as $n \rightarrow \infty$, the distribution function will converge to the standard normal one.


## Gamma and Exponential Distributions

The gamma distribution, like the Poisson, is often used for waiting times and other measurements during temporal intervals.

> Exponential Distribution:

With scale param $\lambda$,

- $\mu = \dfrac{1}{\lambda}$, and $\sigma^2 = \dfrac{1}{\lambda^2}$

- PDF: $f(x, \lambda) = \lambda e^{-\lambda x}, x \geq 0$, else $0$

- CDF: $F(x, \lambda) = 1 - e^{-\lambda x}, x > 0$, else $0$

> Gamma Distribution

With params $\alpha, \beta$,

- PDF: $f(y; \alpha, \beta) = \dfrac{y^{\alpha - 1}e^{-y/\beta}}{\beta^{\alpha}\tau(\alpha)}$,

where gamma function $\tau(\alpha) = \int_0^{\infty} y^{\alpha - 1}e^{-y} dy$;

- PDF, Standard Gamma Distribution ($\beta = 1$): $f(y; \alpha) = \dfrac{y^{\alpha - 1}e^{-y}}{\tau(\alpha)}$

- CDF: $F(y, \alpha) = \int_0^{y} \dfrac{y^{\alpha - 1}e^{-y}}{\tau(\alpha)}$

- $\mu = \alpha\beta$

- $\sigma^2 = \alpha\beta^2$

## Multivariate - Bivariate, Joint Probability Distributions

Until now we've seen univariate probability distributions. The same basic axioms
and rules tend to apply to multivariate distributions.

### Discrete PMFs (or joint PMFs/CDFs):

>> Example: toss a pair of dice.

The sample space by the `mn` rule is $m \times n = 6 \times 6 = 36$ possible pairs  of sample points,

with events such as $E_1 = (1,1)$ having the probability of $\dfrac{1}{36}$.

Hence, the bivariate probability function is $P(Y_1 = y_1, Y_2 = y_2) = \dfrac{1}{36}$.

> Joint or Bivariate PMFs for discrete random multiple variables is their sum:

$P(Y_1 = y_1, Y_2 = y_2) = F(y_1,y_2) = \sum_{t_1 \leq y_1} \sum_{t_2 \leq y_2}p(t_1,t_2)$.

- Axioms: Probabilities all nonzero, and all probabilities sum to 1.

Example: For tossing two die, find $P(2 \leq Y_1 \leq 3, 1 \leq Y_2 \leq 2)$:

Simply sum the probabilities:

$P(2,1) + P(2,2) + P(3,1) + P(3,2) = \frac{1}{36} + \frac{1}{36} + \frac{1}{36} + \frac{1}{36} = \frac{4}{36} = \frac{1}{9}$.

### Continuous CDFs:

> Joint or Bivariate CDFs for two jointly continuous random variables is a double integral:

$P(a_1 \leq Y_1 \leq a_2, b_1 \leq Y_2 \leq b_2) = F(a,b) = \int_{b_1}^{b_2} \int_{a_1}^{a_2} f(y_1,y_2) dy_1dy_2$. (Integrate the inside first then outside at limits).

## Marginal and Conditional Probability Distributions

### Marginal

>  "To find p1(y1), we sum p(y1, y2) over all values of y2 and hence accumulate the probabilities on the y1 axis (or margin)." - Wackerly

Bivariate events such as $P(Y_1 = y_1, Y_2 = y_2)$ we've seen, and per Wackerly,
it follows that _univariate events e.g. $P(Y_1 = y_1)$ is the **union of bivariate events**
$P(Y_1 = y_1, Y_2 = y_2)$ with the union taken "over all possible values of $y_2$."

> Marginal Probability Functions: Fix one var, iterate (sum, integrate) over the other; accumulate.

- Discrete PMF: $p_x(x) = \sum_{\forall y} p(x,y), \forall x$.

- Continuous CDF: $f_x(x) = \int_{\forall y} f(x,y) dy$.

### Conditional

We know that bivariate or joint events such as $P(y_1, y_2)$ are the intersection
of two univariate events, s.t. $P(y_1, y_2) = P(y_1 \cap y_2)$.

Generally, $P(A|B) = \dfrac{P(A \cap B)}{P(B)} \Rightarrow P(y_1 | y_2) = \dfrac{P(y_1 \cap y_2)}{p(y_2)}$.

Less generally:

> Conditional: Discrete: $P(y_1, y_2) = P(y_1 \cap y_2) = P(Y_1 = y_1, Y_2 = y_2)$

> Conditional: Continuous: $P(y_1 | y_2) = P(y_1 \cap y_2) = P(Y_1 \leq y_1 | Y_2 = y_2)$

## Independent Random Variables

If Y1 and Y2 are independent, the joint probability can be written as the product of the marginal probabilities: $F(y_1, y_2) = F_1(y_1)F_2(y_2)$.

## Expected Value of a Function of Random Variables

This is the same as in univariate situations, just multiply the variable value by the (density/mass/PDF/pmf) function.

## Covariance and Correlation of Two Random Variables

Covariance and Correlation are measures of dependency. The larger the covariance,
the larger the correlation (zero covariance, zero correlation).

If $Y_1, Y_2$ are random variables with means $\mu_1, \mu_2$, the covariance 
is $Cov(Y_1, Y_2) = E (Y_1 − \mu_1)(Y_2 − \mu_2)]$.

After some algebra, we can see that's also $E[XY] - E[X]E[Y]$.

Positive covariance indicates proportionality; negative indicate inverse proportionality.

Since covariance is hard to use, we often use the correlation coefficient instead:

$\rho = \dfrac{Cov(Y_1,Y_2)}{\sigma_1 \sigma_2}$

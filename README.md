# RStudio projects for probability and statistics

Assumption: Set theory and proofs familiarity

Source(s):

Most of this material is derived from _"Mathematical Statistics"_ by Wackerly.

Some of this material is also derived from _"Probability and Statistics for Engineering and the Sciences"_, by Jay Devore, but to a much lesser degree.

The Wackerly book has more formulas (instead of tables), introductions to the mn rule,
and other important concepts of combinatorics and statistics.

# Table of Contents

-- Part 1: The Basics --

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
17. [Gamma and Exponential Distributions](#gamma-and-exponential-distributions)
18. [Multivariate (Bivariate, Joint) Probability Distributions](#multivariate---bivariate-joint-probability-distributions)
19. [Marginal and Conditional Probability Distributions](#marginal-and-conditional-probability-distributions)
20. [Independent Random Variables](#independent-random-variables)
21. [Expected Value of a Function of Random Variables](#expected-value-of-a-function-of-random-variables)
22. [Covariance of Two Random Variables](#covariance-of-two-random-variables)

-- Part Two: Estimation and Application --

[Introduction](#part-two-introduction)
1. [Normal Probability Distributions](#normal-probability-distribution)
2. [Standard Normal Distribution](#standard-normal-distribution)
- 2b. [Z Scores](#standard-scores-z-scores)
- 2c. [Central Limit Theorem](#central-limit-theorem)
3. [Moments](#moments)
4. [Estimation: Statistical Inference (and Confidence Intervals)](#estimation-statistical-inference)

-- Part Three: Significance / Hypothesis Testing --

1. [Significance or Hypothesis Testing](#significance-or-hypothesis-testing)
2. [Hypothesis Testing and Inferences Based on Two Populations: Means and Proportions](#hypothesis-testing-and-inferences-based-on-two-populations-means-and-proportions)

-- Part Four: The Analysis of Variance --

1. [ANOVA](#analysis-of-variance-anova)

-- Part Five: Linear Regression -- 

1. [Linear Regression](#linear-regression)

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

- Mean: $\mu = p$

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

Cumulative distribution just means cumulative up to X, or $P(X \leq x)$.

So CDFs can be for discrete or random variables.

The CDF for a discrete random variable is a difference:

$F(x) = P(a < X \leq x) \Rightarrow F(b) - F(a)$, and

$F(x) = P(a \leq X \leq x) \Rightarrow F(b) - F(a) + p(a)$.

The CDF for a continuous random variable $X$ is:

$F(x) = P(a \leq Y \leq b) = \int_{a}^b f(y) dy \Rightarrow F(b) - F(a)$.

For each $x$, $F(x)$ is the area under the density curve to the left of $x$.

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


## Part Two: Introduction

Or, "why did we wait until now to talk about the normal distribution and z scores?"

The answer is, because we use those things for estimation, and they belong best
together in an introduction. The normal distribution is the most frequently used
probability distribution. We'll learn about that, and then about z scores and moments
which feed into estimation.

Z scores also help us with confidence intervals and estimation.

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

> Solving for the Normal Distribution in R

```
dnorm: density function of the normal distribution

pnorm: cumulative density function of the normal distribution

qnorm: quantile function of the normal distribution

rnorm: random sampling from the normal distribution
```

## Standard Normal Distribution

This is the normal distribution, with param values $\mu = 0, \sigma = 1$.

The PDF of a random continuous variable with standard normal distribution is:

$f(z; \mu = 0, \sigma = 1) = \dfrac{1}{\sqrt{2\pi}} e^{\dfrac{-z^2}{2}}$.

## Standard Scores (Z Scores)

"Z score / Z Value / Standard Score"

> From the population (mostly theoretical or edge cases)

Z Scores are called so many things, but they all mean the same thing: the 
distance of an observed value from the statistical mean. Theoretically, this 
would be the population mean, although that is hard to measure as we will cover.

$z = \dfrac{y-\mu}{\sigma}$, 

where the observed value is $y$, the population mean
$\mu$, and the population standard deviation $\sigma$. So "z scores" or 
"standard scores" are also in the business of converting "raw scores", e.g. 
observed data or values (here, $xy$) into standard or raw scores.

Z Scores represent how far an observed value is from the statistical mean (recall
again that population mean and std dev can be difficult to get to, so we say 
"statistical mean" to indicate this abstraction). If a Z Score is 1, that means
the observed raw value $y$ is one standard deviation above the statistical mean.
If a Z score is zero, that means the observed value $y$ is equivalent to the mean.

> From the sample (most actual practice)

Outside of "standardized testing" where an entire population is measured (including
its mean and standard deviation). So, often, population mean and standard deviation
are unknown. In these cases, we use sample statistics instead of population statistics.

Using sample stats,

$z = \dfrac{y- \overline{y}}{s}$, where $\overline{y}$ is the sample mean, 
and $s$ is the sample standard deviation.

Unfortunately many statisticians will not make clear the very important difference
between population and sample statistics in their Z scores, making it confusing
to figure out what they are talking about. You will often see $\overline{y}$ 
observed _sample_ data, mixed with $\sigma$ _population_ data, in their work.

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

<!-- Random Sampling for any distribution: $E[\overline{Y}]  = \mu, V[\overline{Y}] = \dfrac{\sigma^2}{n}$. -->

If the sample size is large, $\overline{Y}$ will have an approximately normal sampling distribution, so as $n \rightarrow \infty$, the distribution function will converge to the standard normal one.


## Moments

Moments of a probability distribution include:

> Moment 1: Expected value (mean)

- The first population moment is $E(X) = \mu$;
- The first sample moment is $\overline{x} = \dfrac{1}{n} \sum X_i$.

   (This makes sense as an average of many points in the sample.)

> Moment 2: Variance

- The second population moment is $E(X^2) = \sigma^2$;
- The second sample moment is $\overline{x}^2 = \dfrac{1}{n} \sum X_i^2$ or $s^2$.

> Moment 3: Skewness (whether the data is skewed to the left or right of the mean), e.g. asymmetry about mean;

> Moment 4: Kurtosis ("tail-ness").

> Moment k: 

- The kth population moment is $E(X^k)$;

- The kth sample moment is $\overline{x}^k = \dfrac{1}{n} \sum X_i^k$.

These moments will be fundamental to techniques of estimation that follow.

## Estimation: Statistical Inference

The purpose of statistics is to make inferences about data, and conclusions. We make 
inferences about a population, and its sample(s). All the data, is not always known.

So, we use _parameters_ to pass into functions - joint probability functions,
estimation functions, and so on, in order to estimate, and infer, data.

When we create estimates they can be a scalar point estimate, or a prediction interval,
e.g. a confidence interval.

### Point Estimates

Notation: $\hat{\theta}$ is the "point estimator" of the parameter $\theta$.

We use $\theta$ as an abstraction.

Now, remember when we talked above in the "z scores/standardization" section about
statistics often using population or sample data, mixed, without much explanation.
Here we see that in play:

"One example is $\hat{\mu}$, the point estimator of $\mu$, is $\overline{x}$, the sample mean."

That statement is really saying the following:
- there is a _population_ mean $\mu$.
- By changing $\mu$ into $\hat{\mu}$, we are saying "what is the _estimator of $\mu$?
- That question is answered on the RHS of the equation, by $\overline{x}$, the sample mean.

This completely squares with what we discussed earlier, using sample data to estimate
(often unavailable) population data.

TODO finish this section

> Unbiased Estimator

Bias of a point estimate is $E(\hat{\theta}) - \theta$. For an unbiased estimate, 
this is $0$, and expected value of the estimator is exactly the param value:

$E[\hat{\theta}] = \theta$.

> Good Estimator: Minimum Variance Unbiased Estimator (MVUE)

A good estimator has minimal variance, and has a "skinny" scatter about the mean.

MUVE: $\hat{\mu} - \overline{x}$. (Basically, minimal variance points us to a 
preferred estimator, all other things being equal with other estimators).

> Recall also variance derivations, often used in estimation techniques:

$\sigma^2 = Var[X] =$

$\Rightarrow E[(X-\mu)^2] \Rightarrow E[(X-E[X])^2] \Rightarrow E[X^2] - E[X]^2$.

> Method of Estimation: Method of Moments

>> Typical problem statement: "Use method of moments to obtain an estimator for $\theta$."

For the first population moment, $E(X) = \mu$ and  first sample moment $\overline{X} = \dfrac{1}{n} \sum X_i$;

For the second population moment, $E(X^2)$ and  first sample moment $\overline{X}^2 = \dfrac{1}{n} \sum X_i^2$;

Let the kth population moment be $E[X^k]$, and let the kth sample moment be $\dfrac{1}{n} \sum_{i=1}^n x_i^k$.

As covered in Devore 6.2, the method of moments estimator is obtained by equating the expected value $E(X^k)$ to actual, sampled value  to $\overline{X^k}$.

As covered in Wackerly, the nth raw moment (about zero) of a random variable $X$
with density function $f(x)$, is:

- $<X^n> = \sum_i X_i^n * f(x_i)$ for a discrete distribution,

   ... very similarly to evaluating a discrete PMF, $f(x,...) = x*f(x)$;

- $<X^n> = \int (x-\mu)^n * f(x) dx$ for a continuous distribution, similar to CDF.

That's it. That is the "method of moments" technique for obtaining estimators for $\theta$.

> Method of Estimation: Method of Maximum Likelihood

>> Typical problem statement: "Use method of maximum likelihood to obtain an estimator for $\theta$."

Process:

• (1) Take the distribution function, e.g. the PDF or CDF. This is also called
the `likelihood function`. Same thing.

This would be a joint PMF/PDF/CDF. Recall that joint probability looks like 
$P(A \cap B) = P(A)P(B)$, particularly with independent events $\because P(A \cap B) = \emptyset$.

Notably this joint probability is a product $P(A)P(B)$. This will matter below.

• (2) Take its natural log. Why? Because it's easier due to logarithm rules as follow.

Recall that the joint probability is a product. Logarithm rules apply,

"The log of a product $\Rightarrow$ sum of logs:"

$log(A*B) \Rightarrow log(A) + log(B)$.

Notation and flow for this step would generally be something like:

$\prod_{i=1}^n f(x) x_i^{\theta} = ln[ f(x) ] + ln [\sum x_i^{\theta}]$.

• (3) Take its derivative and set that to equal for "maximum value."

We are taking the derivative of the log function in the last step. Set it to zero.

• (4) Solve for $\theta$ to find the value that has the maximum likelihood, or 
probability, of being an estimator for $\theta$.

That's it.


### Confidence Intervals

Confidence intervals are another way to obtain estimates. The confidence interval,
or "interval estimator," is a rule by which we get the limits/endpoints. We desire:

- A narrow interval;
- That actually encloses the desired parameter, $\theta$.

> Confidence coefficient: "$1-\alpha$"

Probability that a confidence interval will enclose the desired parameter $\theta$.

Or, "the fraction of the time, with repeated sampling, that the interval contains
 $\theta$", per Wackerley.

A high confidence coefficient means, high confidence. Moving forward with sampling,
we can be confident that our resulting confidence interval contains $\theta$.

> Two sided confidence interval:

Very similarly to real analysis and delta-epsilon infimum and supremum, let 
the probability of the interval between lower limit $\hat{\theta}_L$, upper limit $\hat{\theta}_U$ be:

$P(\hat{\theta}_L \leq \theta \leq \hat{\theta}_U) = 1 - \alpha$, with confidence coefficient $1 - \alpha$.

$[\hat{\theta}_L, \hat{\theta}_U]$ is the resulting two sided confidence interval.

> One sided confidence interval:

Let $P(\hat{\theta}_L \leq \theta) = 1 - \alpha$, with implied one-sided CI of $(\hat{\theta}_L, \infty)$, or,

less abstractly, $\overline{x} - Z_{\alpha/2}*\dfrac{s}{\sqrt{n}} < \mu$;

Let $P(\theta \leq \hat{\theta}_U) = 1 - \alpha$,  with implied one-sided CI of $(-\infty, \hat{\theta}_U)$, or,

less abstractly, $\mu < \overline{x} + Z_{\alpha/2}*\dfrac{s}{\sqrt{n}}$.

> Finding a confidence interval

Recall the standard normal distribution axioms, distance from the mean in standard
deviations was $z = \dfrac{y-\mu}{\sigma}$, the "standardized variable Y" is $\dfrac{Y-\mu}{\sigma}$.

Subtracting $\mu$ "shifts the mean to zero". Dividing by $\sigma$ scales the variable
s.t. the std deviation is 1 instead of $\sigma$.

This will be similar. The quantity $Z = \dfrac{\hat{\theta} - \theta}{\sigma_{\hat{\theta}}}$ has a standard normal distribution.


Let's look at our probability, by selecting tail area values
of $Z_{\alpha/2}$ and $-Z_{\alpha/2}$. Then,

$P(-Z_{\alpha/2} \leq Z \leq Z_{\alpha/2}) = 1 - \alpha$

$\Rightarrow P(-Z_{\alpha/2} \leq \dfrac{\hat{\theta} - \theta}{\sigma_{\hat{\theta}}} \leq Z_{\alpha/2}) = 1 - \alpha$

$\Rightarrow P(-Z_{\alpha/2} * \sigma_{\hat{\theta}} \leq \hat{\theta} - \theta \leq Z_{\alpha/2} * \sigma_{\hat{\theta}}) = 1 - \alpha$

$\Rightarrow P(\hat{\theta} -Z_{\alpha/2} * \sigma_{\hat{\theta}} \leq \theta \leq \hat{\theta} + Z_{\alpha/2} * \sigma_{\hat{\theta}}) = 1 - \alpha$

Where our endpoints comprise the LHS and RHS of the inequality. This is quite abstract,
so let's note that $\theta$ is the expected "population" value, and $\hat{\theta}$
is the "real value" or "estimator," and let's apply this.

[EX] Let the parameter of interest, $\theta$, be population mean $\mu$.

We know its estimator is the sample mean, $\overline{x}$. That means $\hat{\theta} = \overline{x}$.

Now, regarding this: "$\sigma_{\hat{\theta}}$." This is the estimator for standard deviation
of the population, $\sigma$. Well, that would be that of the sample, right? $\dfrac{\sigma}{\sqrt{n}}$.

Putting this all together, we have that

$P(\overline{x} -Z_{\alpha/2} * \dfrac{\sigma}{\sqrt{n}} \leq \mu \leq \overline{x} + Z_{\alpha/2} * \dfrac{\sigma}{\sqrt{n}}) = 1 - \alpha$

$\Rightarrow \overline{x} \pm Z_{\alpha/2} * \dfrac{\sigma}{\sqrt{n}} = 1 - \alpha$.

>> This is also called a $100(1-\alpha)\%$ confidence interval for $\mu$.


[Def] Confidence Interval and eqns
---

> When $\sigma$ is known, 

a $100(a-\alpha)\%$ confidence interval for the mean $\mu$ of a normal population, is,

the point estimate of $\mu$, $\pm$ (z critical value)(standard error of the mean), or

$(\overline{x} - Z_{\alpha/2} * \dfrac{\sigma}{\sqrt{n}}, \overline{x} + Z_{\alpha/2} * \dfrac{\sigma}{\sqrt{n}})$, e.g.

$\overline{x} \pm Z_{\alpha/2} * \dfrac{\sigma}{\sqrt{n}} = 1 - \alpha$.

**Remember you can always replace $\sigma$ with $s$ to represent "sample std deviation."**
This is very useful, since population standard deviations aren't always known, but
sample ones almost always are. This is often called "large sample confidence" work,
because it relies on $n>30$ to work.

> When $\sigma$ is unknown and $n < 30$, use the t-distribution:

$\overline{x} \pm t_{\alpha/2} * \dfrac{s}{\sqrt{n}} = 1 - \alpha$.

Instead of "z critical scores" $Z_{\alpha/2}$, we will use $t_{\alpha/2}$.

The t-distribution is not a normal distribution; since it uses small $n$ and 
the sample standard deviation or error, this introduces less reliability, and 
heavier tails.

The t-distribution is controlled by parameter "degrees of freedom." This can be 
notated $\nu$ or $df$.

- When $\nu = 1$, the t-distribution becomes Cauchy with very heavy tails.
- When $\nu \rightarrow \infty$, the t-distribution converges to the standard
normal distribution, with very light tails.

These principles are also related to kurtosis.

> R code related to the t distribution:

- $dt$ (PDF value),
- $pt$ (CDF value), returns value to the left, or to the right if $pt(x, df, lower.tail = FALSE)$
- $qt$ t-distribution's quantile. $qt(x, df)$, e.g. 

    ```R
    #find the t-score of the 99th quantile of the Student t distribution with df = 20
    qt(.99, df = 20)
    ```

    Or better yet, $qt(1 - \dfrac{\alpha}{2}, df = n-1)$.

- $rt$ (ret value is vector of random variables).

For the t-distribution, we call these t-scores, not z-scores.
---

> Confidence Interval Width: Why we sometimes choose $90\%$ over $99\%$

Wider intervals are more reliable, but less precise; we desire narrow intervals
whenever possible. For this reason, we often specify our desired CI and interval width,
and our output is the required sample size for such a CI and interval width.

(This is also reminiscent of the minimal variance theories of estimation).

_The sample size required for the confidence interval to have width $w$ is:_

$n = (2 Z_{\alpha/2}*\dfrac{\sigma}{w})^2$.

Also, $w = \hat{\theta}_U - \hat{\theta}_L$. The width of the interval is difference of endpoints.

Also, width is twice the margin of error, e.g. if "within 3 standard deviations,"
then your margin of error is 3, and width is 6.

> Final notes on Confidence Intervals

- According to the relative frequency viewpoint of probability, many experiments 
need to be applied/performed. Can't just do one experiment and say that you have
a $95\%$ confidence interval. That theory must be tested.

> Known critical values:

$90\%$ CI: Two sided CV 1.64, one sided 1.28

$95\%$ CI: Two sided CV 1.96, one sided 1.65

$99\%$ CI: Two sided CV 2.58, one sided 2.33

## Significance or Hypothesis Testing

The hypothesis test is about the population mean $\mu$, which represents the "true" average estimated calorie content for all individuals in the population (not just the people sampled).

For more information see hypothesis testing R code samples.

$H_0$, the null hypothesis, is the conservative, "tried and true" value or finding. This is usually from the population statistic, such as $\mu$.

The alternative "researcher's" hypothesis is $H_a > 158$, and is generally
"what the researcher wants to prove," or a theory of sorts.

"Significance testing", denoted $\alpha$, is a way to tell whether a change has the intended consequence.
Significance levels are usually $0.05, 0.01, 0.001$ for most common values.

Assuming $\alpha = 0.05$ because "strong evidence" is common.

The general way to do hypothesis testing is:

• Define hypotheses $H_0$, $H_a$;

• Set up a threshold, significance level;

• Take a sample;

• That sample gives us **test statistics** from the sample $\overline{x}, s, $ etc.

    Where our test statistic is either z test (normally distributed) or t test:

    Recall that z-test is for approximately normally distributed samples with $n > 30$,
    and $\sigma$ pop std dev known, e.g. the z-distribution;

    t-test is for $n < 30$ and/or when $\sigma$ unknown; t-distribution.

$z = \dfrac{\overline{x} - \mu}{\dfrac{\sigma}{\sqrt{n}}}$ or $t = \dfrac{\overline{x} - \mu}{\dfrac{s}{\sqrt{n}}}$

• Set up the rejection region for $H_0$ via critical values:

($qnorm()$ for z distribution, $qt()$ for t distribution).

• See if our **test statistic** hits inside or outside the rejection region for $H_0$.

    This informs whether to reject the null hypothesis.

• See if our **p-values** are greater or less than significance levels.

($pnorm()$ for z distribution, $pt()$ for t distribution).

P-values are a probability that we would get the statistics we got, if $H_0$ were true.

For example, if our test statistic hits inside a rejection region for $H_0$,
YET $H_0$ is true, how likely is that?

A high p-value would mean, very likely. This means that getting the "wrong answer"
is likely with this particular distribution. This indicates _high variance._

So the test for p values is to test that probability against the threshold,
or significance level $\alpha$.

• p-value $< \alpha \Rightarrow$ reject $H_0$.

• p-value $\geq \alpha \Rightarrow$ do not reject $H_0$. 

> One sample t test

$t.test()$ for t distributions. For z distributions, that is going to be a lot of
data so we tend to not write out all the samples individually in R, and also
there appears to be no equivalent builtin for the same reason, so for z-dist,
find z scores automatically and then find p values with $pnorm()$.

> Testing a population proportion, or percentage; "large sample z-test"

Test statistic: $z = \dfrac{\hat{p} - p_0}{\sqrt{\dfrac{p_0(1-p_0}{n}}}$,

where $\hat{p} = \dfrac{82}{n}$ where 82 = sample "success."

Use $prop.test()$ for this for a "one sample population proportion z-test."

> Large sample test: need $np \geq 10, nq \geq 10$.

## Hypothesis Testing and Inferences Based on Two Populations: Means and Proportions

Inferences based on two samples usually happen via means ($\mu, \overline{x}$),
and population proportions.

- Two sample t test: see R code;
The test statistic is 
$t = \dfrac{(\overline{x} - \overline{y}) - \Delta}{\sqrt{\dfrac{s_1^2}{m} + \dfrac{s_2^2}{n}}}$, where $\Delta = 0$ is used if working with the hypothesis that $\mu1 = \mu2$.

```R
# welch's t-test, denoted by last argument of var.equal=false, does not assume
# equivalent variance for the two samples.

t.test(h,p, var.equal = FALSE)
```

- Two-sample t confidence interval:

$(\overline{x} - \overline{y}) \pm t_{\alpha/2, df * \sqrt{\dfrac{s_1^2}{m} + \dfrac{s_2^2}{n}}}$ with approximately normal distribution

> Paired data: use $t.test()$

For matching "paired data," what that really means is sampling the same _thing_,
but in different ways. So instead of the "two objects" or "two samples" usually
discussed in two-sample hypothesis testing, we have two samples of the same thing.

Equations for most "2 sample" problems involve independent sets of data, but in 
paired testing, e.g. duplicate of same "object", there's dependence,
so we use different equations generally called "paired t testing."

- Paired t test: See R code, and also,

The t-statistic for a paired t-test is $t = \dfrac{\overline{d}}{Sd/\sqrt{n}}$ where $\overline{d}$ is the differences mean, $Sd$ is the differences std deviation.

- 2 sample, large sample Z test: when $\sigma$ known, and approximately normal distribution,

Z test statistic is $z = \dfrac{\overline{x} - \overline{y}}{\sqrt{\dfrac{\sigma^2}{m} + \dfrac{\sigma^2}{n}}}$

- Two-proportion population large sample test:

test statistic is $z = \dfrac{\hat{p_1} - \hat{p_2}}{\sqrt{\hat{p}\hat{q}(\dfrac{1}{m}+\dfrac{1}{n})}}$

## Analysis of Variance (ANOVA)

ANOVA, which stands for Analysis of Variance, is a statistical test used to analyze the difference between the means of more than two groups. A one-way ANOVA uses one independent variable, while a two-way ANOVA uses two independent variables.

```R
# 1-sided "single factor" ANOVA p-value:
pf(test_stat,df1 = df_treatment, df2 = df_error, lower.tail = FALSE)
# always right tailed for one-sided ANOVA.

# and, critical values (alpha = 0.05 default):
qf(1-alpha, dfTr, dfError)

# as usual, if p < alpha, reject H0, and check critical vals too.
```

TODO ANOVA table:

## Linear Regression

TODO. See R code for now :)
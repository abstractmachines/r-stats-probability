# RStudio projects for probability and statistics

# Table of Contents
1. [Probability Definition: Events, Sample Points and Sequencing Events Techniques](#probability-definition)
2. [How to calculate probability: Combinations, Permutations, Cardinality](#how-to-calculate-probability)
3. [Random Variables: Discrete and Continuous (pmf, CDF functions)](#discrete-random-variables)
4. [Probability Distributions: Binomial](#binomial-probability-distribution)
5. [Probability Distributions: Hypergeometric](#hypergeometric-probability-distribution)
6. [Probability Distributions: Negative Binomial](#negative-binomial-distribution)

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

TODO

> pmf

TODO

> CDF 

TODO

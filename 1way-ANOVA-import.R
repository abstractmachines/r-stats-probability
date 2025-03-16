# Use the poison dataset to implement the one-way ANOVA test.
# The dataset contains 48 rows and 3 variables:
# Time (survival time), poison (factor level 1,2,3), treatment "Treat"

# import, Read the data
library(dplyr)

PATH <- "https://raw.githubusercontent.com/guru99-edu/R-Programming/master/poisons.csv"

df <- read.csv(PATH) %>%

# remove unnecessary variable
select(-X) %>%

# Order poison variable
mutate(poison = factor(poison, ordered = TRUE))

glimpse(df)

#Run a one-way ANOVA
anova_one_way <- aov(time~poison, data = df)
summary(anova_one_way)

# Tukey test
TukeyHSD(anova_one_way)

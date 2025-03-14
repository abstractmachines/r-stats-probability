# finding p value, critical value for 1-way ANOVA:

# 1-pf(test_stat,df1=df_treatment, df2 = df_error)

# df_treatment = I - 1
# df_error = IJ - 1

alpha <- 0.05

#p-value:
pf(5.04,df1 = 2, df2 = 15, lower.tail = FALSE) # 0.0212

# critical values
qf(1-alpha,2,17) # 3.59; 1 way ANOVA is right tailed only;

# test statistic 5.04 does hit within rejection region (greater than 3.59);

# Reject H0.



pf(1.7258, 2, 27, lower.tail = FALSE) # 0.1970944 = p value;
# p -value > alpha = 0.01 -> fail to reject H0; no significant difference

alpha = 0.01
qf(1-alpha, 2, 27) # 5.488,
# and our test statistic 1.7258 does not fall within the rejection region > 5.4;
# so, fail to reject H0. Confirmed.

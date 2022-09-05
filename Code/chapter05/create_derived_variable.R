# 1.
df <- data.frame(var1 = c(4, 3, 8),
                 var2 = c(2, 6, 1))
df

# 2.
df$var_sum <- df$var1 + df$var2
df

# 3.
df$var_mean <- (df$var1 + df$var2) / 2
df

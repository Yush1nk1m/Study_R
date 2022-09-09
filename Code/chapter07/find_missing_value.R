# 1.
df <- data.frame(sex = c("M", "F", NA, "M", "F"),
                 score = c(5, 4, 3, 4, NA))
df

# 2.
is.na(df)

# 3.
table(is.na(df))

# 4.
table(is.na(df$sex))

table(is.na(df$score))

# 5.
mean(df$score)

sum(df$score)

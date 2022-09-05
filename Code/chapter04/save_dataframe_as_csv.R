# 1.
df_midterm <- data.frame(english = c(90, 80, 60, 70),
                         math = c(50, 60, 100, 20),
                         class = c(1, 1, 2, 2))
df_midterm

# 2.
write.csv(df_midterm, file = "df_midterm.csv")

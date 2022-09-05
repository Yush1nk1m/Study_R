# 1.
english <- c(90, 80, 60, 70)
english

math <- c(50, 60, 100, 20)
math

# 2.
df_midterm <- data.frame(english, math)
df_midterm

# 3.
class <- c(1, 1, 2, 2)
class

df_midterm <- data.frame(english, math, class)
df_midterm

# 4.
mean(df_midterm$english)

mean(df_midterm$math)

# 5.
df_midterm <- data.frame(english = c(90, 80, 60, 70),
                         math = c(50, 60, 100, 20),
                         class = c(1, 1, 2, 2))
df_midterm

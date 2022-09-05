# 1.
  # give grades A, B, C based on 'total'
mpg$grade <- ifelse(mpg$total >= 30, "A",
                      ifelse(mpg$total >= 20, "B", "C"))
head(mpg, 20)

# 2.
table(mpg$grade)

qplot(mpg$grade)

# -
  # give grades A, B, C, D
mpg$grade2 <- ifelse(mpg$total >= 30, "A",
                     ifelse(mpg$total >= 25, "B",
                            ifelse(mpg$total >= 20, "C", "D")))

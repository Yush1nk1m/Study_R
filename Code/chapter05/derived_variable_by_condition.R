# 1.
summary(mpg$total)

hist(mpg$total)

# 2.
mpg$test <- ifelse(mpg$total >= 20, "pass", "fail")

head(mpg, 20)

# 3.
table(mpg$test)

# 4.
library(ggplot2)
qplot(mpg$test)

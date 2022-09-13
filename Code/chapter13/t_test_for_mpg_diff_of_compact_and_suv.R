# 1.
mpg <- as.data.frame(ggplot2::mpg)

library(dplyr)
mpg_diff <- mpg %>%
  select(class, cty) %>%
  filter(class %in% c("compact", "suv"))

head(mpg_diff)

table(mpg_diff$class)

# 2.
t.test(data = mpg_diff, cty ~ class, var.equal = T)

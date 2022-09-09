# 1.
boxplot(mpg$hwy)

# 2.
boxplot(mpg$hwy)$stats

# 3.
mpg$hwy <- ifelse(mpg$hwy < 12 | mpg$hwy > 37, NA, mpg$hwy)
table(is.na(mpg$hwy))

# 4.
mpg %>%
  group_by(drv) %>%
  summarise(mean_hwy = mean(hwy, na.rm = T))

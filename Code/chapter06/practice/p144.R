library(ggplot2)

# Q1.
mpg_copy <- mpg
mpg_copy <- mpg_copy %>%
  mutate(mileage = cty + hwy)

# Q2.
mpg_copy <- mpg_copy %>%
   mutate(average_mileage = mileage / 2)

# Q3.
mpg_copy %>%
  arrange(desc(mpg_copy$average_mileage)) %>%
  head(3)
  

# Q4.
mpg %>%
  mutate(a_mileage = (cty + hwy) / 2) %>%
  arrange(desc(mpg)) %>%
  head(3)

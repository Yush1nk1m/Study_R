# Q1.
mpg %>%
  group_by(class) %>%
  summarise(mean(cty))

# Q2.
mpg %>%
  group_by(class) %>%
  summarise(mean(cty)) %>%
  rename(mean_cty = "mean(cty)") %>%
  arrange(desc(mean_cty))

# Q3.
mpg %>%
  group_by(class) %>%
  summarise(mean(hwy)) %>%
  rename(mean_hwy = "mean(hwy)") %>%
  arrange(desc(mean_hwy)) %>%
  head(3)

# Q4.
mpg %>%
  filter(class == "compact") %>%
  group_by(manufacturer) %>%
  arrange(desc(n = n()))

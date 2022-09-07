library(dplyr)
library(ggplot2)

# Q1.
c_midwest <- midwest
c_midwest <- c_midwest %>%
  mutate(non_adults = (poptotal - popadults) / poptotal * 100)

# Q2.
c_midwest %>%
  arrange(desc(non_adults)) %>%
  head(5)

# Q3.
c_midwest <- c_midwest %>%
  mutate(minor_size = ifelse(non_adults >= 40, "large", ifelse(non_adults >= 30, "middle", "small")))

c_midwest %>%
  group_by(minor_size) %>%
  summarise(n = n())

# Q4.
c_midwest %>%
  mutate(asian_ratio = popasian / poptotal * 100) %>%
  arrange(asian_ratio) %>%
  select(state, county, asian_ratio) %>%
  head(10)

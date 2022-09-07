library(dplyr)
exam <- read.csv("csv_exam.csv")

# 1.
exam %>% filter(class == 1) %>% select(english)

# 2.
exam %>%
  filter(class == 1) %>%
  select(english)

# 3.
exam %>%
  select(id, math) %>%
  head

exam %>%
  select(id, math) %>%
  head(10)

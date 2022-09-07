exam <- read.csv("csv_exam.csv")
library(dplyr)

# 1.
exam %>%
  mutate(total = math + english + science) %>%
  head

# 2.
exam %>%
  mutate(total = math + english + science,
         mean = (math + english + science) / 3) %>%
  head

# 3.
exam %>%
  mutate(test = ifelse(science >= 60, "pass", "fail")) %>%
  head

# 4.
exam %>%
  mutate(total = math + english + science) %>%
  arrange(total) %>%
  head

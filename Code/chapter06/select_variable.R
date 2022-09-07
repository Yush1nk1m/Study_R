library(dplyr)
exam <- read.csv("csv_exam.csv")
# 1.
exam %>% select(math)

# 2.
exam %>% select(english)

# 3.
exam %>% select(class, math, english)

# 4.
exam %>% select(-math)

exam %>% select(-math, -english)

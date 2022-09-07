# 1.
library(dplyr)
exam <- read.csv("csv_exam.csv")
exam

# 2.
exam %>% filter(class == 1)

# 3.
exam %>% filter(class == 2)

# 4.
exam %>% filter(class != 1)

exam %>% filter(class != 2)

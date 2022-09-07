exam <- read.csv("csv_exam.csv")
library(dplyr)

exam %>% arrange(desc(math))

exam %>% arrange(class, math)

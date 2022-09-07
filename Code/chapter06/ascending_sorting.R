exam <- read.csv("csv_exam.csv")
library(dplyr)

exam %>% arrange(math)

exam <- read.csv("csv_exam.csv")
library(dplyr)
# 1.
name <- data.frame(class = c(1, 2, 3, 4, 5),
                   teacher = c("kim", "lee", "park", "choi", "jung"))
name

# 2.
exam_new <- left_join(exam, name, by = "class")
exam_new

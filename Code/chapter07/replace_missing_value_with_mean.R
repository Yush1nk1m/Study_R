# 1.
mean(exam$math, na.rm = T)

# 2.
exam$math <- ifelse(is.na(exam$math), 55, exam$math)
table(is.na(exam$math))

exam

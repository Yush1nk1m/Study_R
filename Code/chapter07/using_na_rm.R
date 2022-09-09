# 1.
mean(df$score, na.rm = T)

sum(df$score, na.rm = T)

# 2.
exam <- read.csv("csv_exam.csv")
exam[c(3, 8, 15), "math"] <- NA
exam

exam %>% summarise(mean_math = mean(math))

# 3.
exam %>% summarise(mean_math = mean(math, na.rm = T))

# 4.
exam %>% summarise(mean_math = mean(math, na.rm = T),
                   sum_math = sum(math, na.rm = T),
                   median_math = median(math, na.rm = T))

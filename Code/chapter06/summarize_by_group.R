exam <- read.csv("csv_exam.csv")
library(dplyr)

# 1.
exam %>% summarise(mean_math = mean(math))

# 2.
exam %>%
  group_by(class) %>%
  summarise(mean_math = mean(math))

# 3.
exam %>%
  group_by(class) %>%
  summarise(mean_math = mean(math),
            sum_math = sum(math),
            median_math = median(math),
            n = n())

# 4.
mpg %>%
  group_by(manufacturer, drv) %>%
  summarise(mean_cty = mean(cty)) %>%
  head(10)

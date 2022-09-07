library(ggplot2)
library(dplyr)
# Q1.
df_mpg <- data.frame(mpg)
class_and_cty <- df_mpg %>% select(class, cty)
class_and_cty

# Q2.
mean_of_suv <- class_and_cty %>% filter(class == "suv")
mean_of_compact <- class_and_cty %>% filter(class == "compact")
mean_of_suv <- mean(mean_of_suv$cty)
mean_of_compact <- mean(mean_of_compact$cty)

ifelse(mean_of_suv > mean_of_compact, print("suv is better"), print("compact is better"))

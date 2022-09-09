# 1.
library(dplyr)
df %>% filter(is.na(score))

# 2.
df %>% filter(!is.na(score))

# 3.
df_nomiss <- df %>% filter(!is.na(score))

mean(df_nomiss$score)

sum(df_nomiss$score)

# 4.
df_nomiss <- df %>% filter(!is.na(sex) & !is.na(score))
df_nomiss

# 5.
df_nomiss2 <- na.omit(df)
df_nomiss2

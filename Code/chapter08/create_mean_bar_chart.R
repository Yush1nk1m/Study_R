# 1.
library(dplyr)

df_mpg <- mpg %>%
  group_by(drv) %>%
  summarise(mean_hwy = mean(hwy))

df_mpg

# 2.
ggplot(data = df_mpg, aes(x = drv, y = mean_hwy)) + geom_col()

# 3.
ggplot(data = df_mpg, aes(x = reorder(drv, -mean_hwy), y = mean_hwy)) + geom_col()

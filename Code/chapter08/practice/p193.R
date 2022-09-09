mpg <- as.data.frame(ggplot2::mpg)
# Q1.
suv_mpg <- mpg %>%
  filter(class %in% "suv") %>%
  group_by(manufacturer) %>%
  summarise(mean_cty = mean(cty))

ggplot(data = suv_mpg, aes(x = reorder(manufacturer, -mean_cty), y = mean_cty)) + geom_col()

# Q2.
freq_mpg <- mpg %>%
  group_by(class)

ggplot(data = freq_mpg, aes(x = class)) + geom_bar()

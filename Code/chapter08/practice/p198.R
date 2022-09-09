mpg_three_class <- mpg %>%
  filter(class %in% c("compact", "subcompact", "suv"))

ggplot(data = mpg_three_class, aes(x = class, y = cty)) + geom_boxplot()

class1 <- exam %>% filter(class == 1)
class2 <- exam %>% filter(class == 2)

mean(class1$math)

mean(class2$math)

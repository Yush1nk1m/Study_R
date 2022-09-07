library(ggplot2)
library(dplyr)
audi <- mpg %>% filter(manufacturer == "audi")

print(audi %>% arrange(desc(hwy)) %>% head(5))

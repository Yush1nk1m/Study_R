# 1.
exam %>% filter(class == 1 | class == 3 | class == 5)

# 2.
exam %>% filter(class %in% c(1, 3, 5))

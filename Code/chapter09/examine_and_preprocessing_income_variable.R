# 1.
class(welfare$income)

summary(welfare$income)

qplot(welfare$income)

qplot(welfare$income) + xlim(0, 1000)

# 2. preprocessing
summary(welfare$income)

welfare$income <- ifelse(welfare$income %in% c(0, 9999), NA, welfare$income)

table(is.na(welfare$income))

# 1.
class(welfare$birth)

summary(welfare$birth)

qplot(welfare$birth)

# 2. preprocessing
summary(welfare$birth)

table(is.na(welfare$birth))

welfare$birth <- ifelse(welfare$birth == 9999, NA, welfare$birth)
table(is.na(welfare$birth))

# 3.
welfare$age <- 2015 - welfare$birth + 1
summary(welfare$age)

qplot(welfare$age)

# 1.
class(welfare$sex)
table(welfare$sex)

# 2.
table(welfare$sex)

welfare$sex <- ifelse(welfare$sex == 9, NA, welfare$sex)

table(is.na(welfare$sex))

welfare$sex <- ifelse(welfare$sex == 1, "male", "female")
table(welfare$sex)

qplot(welfare$sex)

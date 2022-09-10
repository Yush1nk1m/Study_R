# 1.
class(welfare$religion)

table(welfare$religion)

# 2.
welfare$religion <- ifelse(welfare$religion == 1, "yes", "no")
table(welfare$religion)

qplot(welfare$religion)

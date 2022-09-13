# 1.
exam[exam$class == 1,]

exam[exam$math >= 80,]

# 2.
exam[exam$class == 1 & exam$math >= 50,]

exam[exam$english < 90 | exam$science < 50,]

library(ggplot2)

# 1. background setting
ggplot(data = mpg, aes(x = displ, y = hwy))

# 2. add graph
ggplot(data = mpg, aes(x = displ, y = hwy)) + geom_point()

# 3. adjusting axis range
ggplot(data = mpg, aes(x = displ, y = hwy)) + geom_point() + xlim(3, 6)

ggplot(data = mpg, aes(x = displ, y = hwy)) + # data, axis setting
  geom_point() + # graph type
  xlim(3, 6) + # detail setting
  ylim(10, 30) # ~

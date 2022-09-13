# 1.
install.packages("plotly")
library(plotly)

# 2.
library(ggplot2)
p <- ggplot(data = mpg, aes(x = displ, y = hwy, col = drv)) + geom_point()

# 3.
ggplotly(p)

# 5.
p <- ggplot(data = diamonds, aes(x = cut, fill = clarity)) +
  geom_bar(position = "dodge")

ggplotly(p)
